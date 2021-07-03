import 'dart:convert';

Minion minionFromJson(String str) => Minion.fromJson(json.decode(str));

String minionToJson(Minion data) => json.encode(data.toJson());

class Minion {
    Minion({
        this.success,
        this.contents,
    });

    Success success;
    Contents contents;

    factory Minion.fromJson(Map<String, dynamic> json) => Minion(
        success: Success.fromJson(json["success"]),
        contents: Contents.fromJson(json["contents"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success.toJson(),
        "contents": contents.toJson(),
    };
}

class Contents {
    Contents({
        this.translated,
        this.text,
        this.translation,
    });

    String translated;
    String text;
    String translation;

    factory Contents.fromJson(Map<String, dynamic> json) => Contents(
        translated: json["translated"],
        text: json["text"],
        translation: json["translation"],
    );

    Map<String, dynamic> toJson() => {
        "translated": translated,
        "text": text,
        "translation": translation,
    };
}

class Success {
    Success({
        this.total,
    });

    int total;

    factory Success.fromJson(Map<String, dynamic> json) => Success(
        total: json["total"],
    );

    Map<String, dynamic> toJson() => {
        "total": total,
    };
}

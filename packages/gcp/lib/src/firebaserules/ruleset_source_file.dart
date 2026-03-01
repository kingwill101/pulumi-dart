// ignore_for_file: unused_element, unnecessary_cast


class RulesetSourceFile {
  /// Textual Content.
  final String content;
  /// Fingerprint (e.g. github sha) associated with the `File`.
  final String? fingerprint;
  /// File name.
  final String name;

  /// Creates a new [RulesetSourceFile].
  /// [content] Textual Content.
  /// [fingerprint] Fingerprint (e.g. github sha) associated with the `File`.
  /// [name] File name.
  RulesetSourceFile({
    required this.content,
    this.fingerprint,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'fingerprint': ?fingerprint,
      'name': name,
    };
  }

  factory RulesetSourceFile.fromMap(Map<String, dynamic> map) {
    return RulesetSourceFile(
      content: map['content'] as String,
      fingerprint: map['fingerprint'] == null ? null : map['fingerprint'] as String,
      name: map['name'] as String,
    );
  }
}


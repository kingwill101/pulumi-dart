// ignore_for_file: unused_element, unnecessary_cast

/// `File` containing source content.
class FileResponse {
  /// Textual Content.
  final String content;

  /// Fingerprint (e.g. github sha) associated with the `File`.
  final String fingerprint;

  /// File name.
  final String name;

  /// Creates a new [FileResponse].
  /// [content] Textual Content.
  /// [fingerprint] Fingerprint (e.g. github sha) associated with the `File`.
  /// [name] File name.
  FileResponse({
    required this.content,
    required this.fingerprint,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'fingerprint': fingerprint,
      'name': name,
    };
  }

  factory FileResponse.fromMap(Map<String, dynamic> map) {
    return FileResponse(
      content: map['content'] as String,
      fingerprint: map['fingerprint'] as String,
      name: map['name'] as String,
    );
  }
}

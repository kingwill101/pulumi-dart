// ignore_for_file: unused_element, unnecessary_cast

class ImportFileResponse {
  /// The contents of the file.
  final String content;

  /// The name of the file.
  final String name;

  /// Creates a new [ImportFileResponse].
  /// [content] The contents of the file.
  /// [name] The name of the file.
  ImportFileResponse({
    required this.content,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    map['name'] = name;
    return map;
  }

  factory ImportFileResponse.fromMap(Map<String, dynamic> map) {
    return ImportFileResponse(
      content: map['content'] as String,
      name: map['name'] as String,
    );
  }
}

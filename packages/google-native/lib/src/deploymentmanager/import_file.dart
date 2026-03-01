// ignore_for_file: unused_element, unnecessary_cast

class ImportFile {
  /// The contents of the file.
  final String? content;

  /// The name of the file.
  final String? name;

  /// Creates a new [ImportFile].
  /// [content] The contents of the file.
  /// [name] The name of the file.
  ImportFile({this.content, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'content': ?content, 'name': ?name};
  }

  factory ImportFile.fromMap(Map<String, dynamic> map) {
    return ImportFile(
      content: map['content'] == null ? null : map['content'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class ImportFile3 {
  /// The contents of the file.
  final String? content;

  /// The name of the file.
  final String? name;

  ImportFile3({
    this.content,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory ImportFile3.fromMap(Map<String, dynamic> map) {
    return ImportFile3(
      content: map['content'] == null ? null : map['content'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class ImportFileDeploymentmanagerV2beta {
  /// The contents of the file.
  final String? content;

  /// The name of the file.
  final String? name;

  ImportFileDeploymentmanagerV2beta({
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

  factory ImportFileDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return ImportFileDeploymentmanagerV2beta(
      content: map['content'] == null ? null : map['content'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

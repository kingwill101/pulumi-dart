// ignore_for_file: unused_element, unnecessary_cast

class ImportFileResponseDeploymentmanagerV2 {
  /// The contents of the file.
  final String content;

  /// The name of the file.
  final String name;

  ImportFileResponseDeploymentmanagerV2({
    required this.content,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    map['name'] = name;
    return map;
  }

  factory ImportFileResponseDeploymentmanagerV2.fromMap(
      Map<String, dynamic> map) {
    return ImportFileResponseDeploymentmanagerV2(
      content: map['content'] as String,
      name: map['name'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class ImportFileResponseDeploymentmanagerV2beta {
  /// The contents of the file.
  final String content;

  /// The name of the file.
  final String name;

  ImportFileResponseDeploymentmanagerV2beta({
    required this.content,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    map['name'] = name;
    return map;
  }

  factory ImportFileResponseDeploymentmanagerV2beta.fromMap(
      Map<String, dynamic> map) {
    return ImportFileResponseDeploymentmanagerV2beta(
      content: map['content'] as String,
      name: map['name'] as String,
    );
  }
}

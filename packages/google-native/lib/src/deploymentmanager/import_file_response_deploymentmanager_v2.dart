// ignore_for_file: unused_element, unnecessary_cast

class ImportFileResponseDeploymentmanagerV2 {
  /// The contents of the file.
  final String content;

  /// The name of the file.
  final String name;

  /// Creates a new [ImportFileResponseDeploymentmanagerV2].
  /// [content] The contents of the file.
  /// [name] The name of the file.
  ImportFileResponseDeploymentmanagerV2({
    required this.content,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'content': content, 'name': name};
  }

  factory ImportFileResponseDeploymentmanagerV2.fromMap(
    Map<String, dynamic> map,
  ) {
    return ImportFileResponseDeploymentmanagerV2(
      content: map['content'] as String,
      name: map['name'] as String,
    );
  }
}

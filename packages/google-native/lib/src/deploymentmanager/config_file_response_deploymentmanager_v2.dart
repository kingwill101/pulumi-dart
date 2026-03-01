// ignore_for_file: unused_element, unnecessary_cast

class ConfigFileResponseDeploymentmanagerV2 {
  /// The contents of the file.
  final String content;

  /// Creates a new [ConfigFileResponseDeploymentmanagerV2].
  /// [content] The contents of the file.
  ConfigFileResponseDeploymentmanagerV2({required this.content});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'content': content};
  }

  factory ConfigFileResponseDeploymentmanagerV2.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigFileResponseDeploymentmanagerV2(
      content: map['content'] as String,
    );
  }
}

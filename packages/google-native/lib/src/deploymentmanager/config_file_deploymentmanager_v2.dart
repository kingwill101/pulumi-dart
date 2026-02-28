// ignore_for_file: unused_element, unnecessary_cast


class ConfigFileDeploymentmanagerV2 {
  /// The contents of the file.
  final String? content;

  /// Creates a new [ConfigFileDeploymentmanagerV2].
  /// [content] The contents of the file.
  ConfigFileDeploymentmanagerV2({
    this.content,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
    };
  }

  factory ConfigFileDeploymentmanagerV2.fromMap(Map<String, dynamic> map) {
    return ConfigFileDeploymentmanagerV2(
      content: map['content'] == null ? null : map['content'] as String,
    );
  }
}


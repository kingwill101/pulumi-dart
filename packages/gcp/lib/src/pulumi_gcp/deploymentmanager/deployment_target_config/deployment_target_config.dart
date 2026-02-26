// ignore_for_file: unused_element, unnecessary_cast

class DeploymentTargetConfig {
  /// The full YAML contents of your configuration file.
  final String content;

  DeploymentTargetConfig({
    required this.content,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    return map;
  }

  factory DeploymentTargetConfig.fromMap(Map<String, dynamic> map) {
    return DeploymentTargetConfig(
      content: map['content'] as String,
    );
  }
}

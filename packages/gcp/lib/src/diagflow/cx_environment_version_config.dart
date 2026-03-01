// ignore_for_file: unused_element, unnecessary_cast

class CxEnvironmentVersionConfig {
  /// Format: projects/{{project}}/locations/{{location}}/agents/{{agent}}/flows/{{flow}}/versions/{{version}}.
  final String version;

  /// Creates a new [CxEnvironmentVersionConfig].
  /// [version] Format: projects/{{project}}/locations/{{location}}/agents/{{agent}}/flows/{{flow}}/versions/{{version}}.
  CxEnvironmentVersionConfig({required this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'version': version};
  }

  factory CxEnvironmentVersionConfig.fromMap(Map<String, dynamic> map) {
    return CxEnvironmentVersionConfig(version: map['version'] as String);
  }
}

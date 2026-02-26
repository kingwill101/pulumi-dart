// ignore_for_file: unused_element, unnecessary_cast

class CxEnvironmentVersionConfig {
  /// Format: projects/{{project}}/locations/{{location}}/agents/{{agent}}/flows/{{flow}}/versions/{{version}}.
  final String version;

  CxEnvironmentVersionConfig({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['version'] = version;
    return map;
  }

  factory CxEnvironmentVersionConfig.fromMap(Map<String, dynamic> map) {
    return CxEnvironmentVersionConfig(
      version: map['version'] as String,
    );
  }
}

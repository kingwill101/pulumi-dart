// ignore_for_file: unused_element, unnecessary_cast


class EnvironmentConfigSoftwareConfigCloudDataLineageIntegration {
  /// Whether or not Cloud Data Lineage integration is enabled.
  final bool enabled;

  /// Creates a new [EnvironmentConfigSoftwareConfigCloudDataLineageIntegration].
  /// [enabled] Whether or not Cloud Data Lineage integration is enabled.
  EnvironmentConfigSoftwareConfigCloudDataLineageIntegration({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory EnvironmentConfigSoftwareConfigCloudDataLineageIntegration.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigSoftwareConfigCloudDataLineageIntegration(
      enabled: map['enabled'] as bool,
    );
  }
}


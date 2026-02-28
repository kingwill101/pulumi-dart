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
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory EnvironmentConfigSoftwareConfigCloudDataLineageIntegration.fromMap(
      Map<String, dynamic> map) {
    return EnvironmentConfigSoftwareConfigCloudDataLineageIntegration(
      enabled: map['enabled'] as bool,
    );
  }
}

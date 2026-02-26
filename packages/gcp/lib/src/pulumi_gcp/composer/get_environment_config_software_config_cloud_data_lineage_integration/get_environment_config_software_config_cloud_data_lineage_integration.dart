// ignore_for_file: unused_element, unnecessary_cast

class GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration {
  /// Whether or not Cloud Data Lineage integration is enabled.
  final bool enabled;

  GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration.fromMap(
      Map<String, dynamic> map) {
    return GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration(
      enabled: map['enabled'] as bool,
    );
  }
}

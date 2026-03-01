// ignore_for_file: unused_element, unnecessary_cast

class GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration {
  /// Whether or not Cloud Data Lineage integration is enabled.
  final bool enabled;

  /// Creates a new [GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration].
  /// [enabled] Whether or not Cloud Data Lineage integration is enabled.
  GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEnvironmentConfigSoftwareConfigCloudDataLineageIntegration(
      enabled: map['enabled'] as bool,
    );
  }
}

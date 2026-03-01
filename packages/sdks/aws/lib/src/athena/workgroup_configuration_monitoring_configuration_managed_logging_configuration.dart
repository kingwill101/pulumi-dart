// ignore_for_file: unused_element, unnecessary_cast


class WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration {
  /// Boolean whether managed log persistence is enabled for the workgroup.
  final bool enabled;
  final String? kmsKey;

  /// Creates a new [WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration].
  /// [enabled] Boolean whether managed log persistence is enabled for the workgroup.
  /// [kmsKey] Optional.
  WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration({
    required this.enabled,
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'kmsKey': ?kmsKey,
    };
  }

  factory WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationMonitoringConfigurationManagedLoggingConfiguration(
      enabled: map['enabled'] as bool,
      kmsKey: map['kmsKey'] == null ? null : map['kmsKey'] as String,
    );
  }
}


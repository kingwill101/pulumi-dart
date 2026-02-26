// ignore_for_file: unused_element, unnecessary_cast

class ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration {
  /// Enables managed log persistence for monitoring logs.
  final bool? enabled;

  /// The KMS key ARN to encrypt the logs stored in managed persistence.
  final String? encryptionKeyArn;

  ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration({
    this.enabled,
    this.encryptionKeyArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final encryptionKeyArnValue = encryptionKeyArn;
    if (encryptionKeyArnValue != null) {
      map['encryptionKeyArn'] = encryptionKeyArnValue;
    }
    return map;
  }

  factory ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      encryptionKeyArn: map['encryptionKeyArn'] == null
          ? null
          : map['encryptionKeyArn'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration {
  /// Enables managed log persistence for monitoring logs.
  final pulumi.Input<bool>? enabled;
  /// The KMS key ARN to encrypt the logs stored in managed persistence.
  final pulumi.Input<String>? encryptionKeyArn;

  /// Creates a new [ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration].
  /// [enabled] Enables managed log persistence for monitoring logs.
  /// [encryptionKeyArn] The KMS key ARN to encrypt the logs stored in managed persistence.
  ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration({
    this.enabled,
    this.encryptionKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'encryptionKeyArn': ?encryptionKeyArn,
    };
  }

  factory ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationMonitoringConfigurationManagedPersistenceMonitoringConfiguration(
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      encryptionKeyArn: map['encryptionKeyArn'] == null ? null : ((map['encryptionKeyArn'] as String).input()).input(),
    );
  }
}


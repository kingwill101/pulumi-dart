// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration {
  /// Strategy for resolving encryption conflicts. Valid values: `ALLOW`, `SKIP`.
  final pulumi.Input<String>? encryptionConflictResolutionStrategy;

  /// Encryption strategy for logs. Valid values: `AWS_OWNED`, `CUSTOMER_MANAGED`.
  final pulumi.Input<String> encryptionStrategy;

  /// ARN of the KMS key to use for encryption when `encryption_strategy` is `CUSTOMER_MANAGED`.
  final pulumi.Input<String>? kmsKeyArn;

  /// Creates a new [CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration].
  /// [encryptionConflictResolutionStrategy] Strategy for resolving encryption conflicts. Valid values: `ALLOW`, `SKIP`.
  /// [encryptionStrategy] Encryption strategy for logs. Valid values: `AWS_OWNED`, `CUSTOMER_MANAGED`.
  /// [kmsKeyArn] ARN of the KMS key to use for encryption when `encryption_strategy` is `CUSTOMER_MANAGED`.
  CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration({
    this.encryptionConflictResolutionStrategy,
    required this.encryptionStrategy,
    this.kmsKeyArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionConflictResolutionStrategy':
          ?encryptionConflictResolutionStrategy,
      'encryptionStrategy': encryptionStrategy,
      'kmsKeyArn': ?kmsKeyArn,
    };
  }

  factory CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration(
      encryptionConflictResolutionStrategy: (() {
        final guardedValue = map['encryptionConflictResolutionStrategy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionStrategy: pulumi.Input.fromValue(
        map['encryptionStrategy'] as String,
      ),
      kmsKeyArn: (() {
        final guardedValue = map['kmsKeyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration {
  /// Strategy for resolving encryption conflicts. Valid values: `ALLOW`, `SKIP`.
  final String? encryptionConflictResolutionStrategy;

  /// Encryption strategy for logs. Valid values: `AWS_OWNED`, `CUSTOMER_MANAGED`.
  final String encryptionStrategy;

  /// ARN of the KMS key to use for encryption when `encryption_strategy` is `CUSTOMER_MANAGED`.
  final String? kmsKeyArn;

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
      encryptionConflictResolutionStrategy:
          map['encryptionConflictResolutionStrategy'] == null
          ? null
          : map['encryptionConflictResolutionStrategy'] as String,
      encryptionStrategy: map['encryptionStrategy'] as String,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
    );
  }
}

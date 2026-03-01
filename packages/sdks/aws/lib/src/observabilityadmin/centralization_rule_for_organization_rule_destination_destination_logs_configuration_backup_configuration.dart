// ignore_for_file: unused_element, unnecessary_cast


class CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration {
  /// ARN of the KMS key to use for backup encryption.
  final String? kmsKeyArn;
  /// AWS region for backup storage.
  final String? region;

  /// Creates a new [CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration].
  /// [kmsKeyArn] ARN of the KMS key to use for backup encryption.
  /// [region] AWS region for backup storage.
  CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration({
    this.kmsKeyArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyArn': ?kmsKeyArn,
      'region': ?region,
    };
  }

  factory CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration(
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}


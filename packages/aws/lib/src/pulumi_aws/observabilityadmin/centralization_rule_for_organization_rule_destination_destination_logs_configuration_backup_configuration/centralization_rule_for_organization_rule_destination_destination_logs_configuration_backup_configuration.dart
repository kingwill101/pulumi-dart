// ignore_for_file: unused_element, unnecessary_cast

class CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration {
  /// ARN of the KMS key to use for backup encryption.
  final String? kmsKeyArn;

  /// AWS region for backup storage.
  final String? region;

  CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration({
    this.kmsKeyArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration.fromMap(
      Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration(
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

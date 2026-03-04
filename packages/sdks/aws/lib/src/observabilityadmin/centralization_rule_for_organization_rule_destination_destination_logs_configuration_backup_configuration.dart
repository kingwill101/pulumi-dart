// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration {
  /// ARN of the KMS key to use for backup encryption.
  final pulumi.Input<String>? kmsKeyArn;

  /// AWS region for backup storage.
  final pulumi.Input<String>? region;

  /// Creates a new [CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration].
  /// [kmsKeyArn] ARN of the KMS key to use for backup encryption.
  /// [region] AWS region for backup storage.
  CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration({
    this.kmsKeyArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyArn': ?kmsKeyArn, 'region': ?region};
  }

  factory CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration(
      kmsKeyArn: (() {
        final guardedValue = map['kmsKeyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'centralization_rule_for_organization_rule_destination_destination_logs_configuration_backup_configuration.dart';
import 'centralization_rule_for_organization_rule_destination_destination_logs_configuration_logs_encryption_configuration.dart';

class CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration {
  /// Configuration block for backup settings. See `backup_configuration` below.
  final pulumi.Input<CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration>? backupConfiguration;
  /// Configuration block for logs encryption settings. See `logs_encryption_configuration` below.
  final pulumi.Input<CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration>? logsEncryptionConfiguration;

  /// Creates a new [CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration].
  /// [backupConfiguration] Configuration block for backup settings. See `backup_configuration` below.
  /// [logsEncryptionConfiguration] Configuration block for logs encryption settings. See `logs_encryption_configuration` below.
  CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration({
    this.backupConfiguration,
    this.logsEncryptionConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfiguration': ?pulumi.Input.mapOptionalInputValue<CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration, Map<String, dynamic>>(backupConfiguration, (value) => value.toMap()),
      'logsEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration, Map<String, dynamic>>(logsEncryptionConfiguration, (value) => value.toMap()),
    };
  }

  factory CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration(
      backupConfiguration: map['backupConfiguration'] == null ? null : ((CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration.fromMap((map['backupConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      logsEncryptionConfiguration: map['logsEncryptionConfiguration'] == null ? null : ((CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration.fromMap((map['logsEncryptionConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}


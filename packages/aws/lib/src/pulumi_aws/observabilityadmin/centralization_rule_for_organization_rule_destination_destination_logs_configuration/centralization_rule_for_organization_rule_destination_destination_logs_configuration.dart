// ignore_for_file: unused_element, unnecessary_cast

import '../centralization_rule_for_organization_rule_destination_destination_logs_configuration_backup_configuration/centralization_rule_for_organization_rule_destination_destination_logs_configuration_backup_configuration.dart';
import '../centralization_rule_for_organization_rule_destination_destination_logs_configuration_logs_encryption_configuration/centralization_rule_for_organization_rule_destination_destination_logs_configuration_logs_encryption_configuration.dart';

class CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration {
  /// Configuration block for backup settings. See `backup_configuration` below.
  final CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration?
      backupConfiguration;

  /// Configuration block for logs encryption settings. See `logs_encryption_configuration` below.
  final CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration?
      logsEncryptionConfiguration;

  CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration({
    this.backupConfiguration,
    this.logsEncryptionConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupConfigurationValue = backupConfiguration;
    if (backupConfigurationValue != null) {
      map['backupConfiguration'] = backupConfigurationValue.toMap();
    }
    final logsEncryptionConfigurationValue = logsEncryptionConfiguration;
    if (logsEncryptionConfigurationValue != null) {
      map['logsEncryptionConfiguration'] =
          logsEncryptionConfigurationValue.toMap();
    }
    return map;
  }

  factory CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration(
      backupConfiguration: map['backupConfiguration'] == null
          ? null
          : CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration
              .fromMap(
                  (map['backupConfiguration'] as Map).cast<String, dynamic>()),
      logsEncryptionConfiguration: map['logsEncryptionConfiguration'] == null
          ? null
          : CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration
              .fromMap((map['logsEncryptionConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}

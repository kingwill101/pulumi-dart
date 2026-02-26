// ignore_for_file: unused_element, unnecessary_cast

import '../centralization_rule_for_organization_rule_destination_destination_logs_configuration_backup_configuration/centralization_rule_for_organization_rule_destination_destination_logs_configuration_backup_configuration.dart';
import '../centralization_rule_for_organization_rule_destination_destination_logs_configuration_logs_encryption_configuration/centralization_rule_for_organization_rule_destination_destination_logs_configuration_logs_encryption_configuration.dart';

class CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration {
  /// Configuration block for backup settings. See <span pulumi-lang-nodejs="`backupConfiguration`" pulumi-lang-dotnet="`BackupConfiguration`" pulumi-lang-go="`backupConfiguration`" pulumi-lang-python="`backup_configuration`" pulumi-lang-yaml="`backupConfiguration`" pulumi-lang-java="`backupConfiguration`">`backup_configuration`</span> below.
  final CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration?
      backupConfiguration;

  /// Configuration block for logs encryption settings. See <span pulumi-lang-nodejs="`logsEncryptionConfiguration`" pulumi-lang-dotnet="`LogsEncryptionConfiguration`" pulumi-lang-go="`logsEncryptionConfiguration`" pulumi-lang-python="`logs_encryption_configuration`" pulumi-lang-yaml="`logsEncryptionConfiguration`" pulumi-lang-java="`logsEncryptionConfiguration`">`logs_encryption_configuration`</span> below.
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

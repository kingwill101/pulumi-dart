// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'centralization_rule_for_organization_rule_destination_destination_logs_configuration_backup_configuration.dart';
import 'centralization_rule_for_organization_rule_destination_destination_logs_configuration_log_group_name_configuration.dart';
import 'centralization_rule_for_organization_rule_destination_destination_logs_configuration_logs_encryption_configuration.dart';

class CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration {
  /// Configuration block for backup settings. See `backupConfiguration` below.
  final pulumi.Input<CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration>? backupConfiguration;
  /// Configuration block for a naming pattern for destination log groups created during centralization. See `logGroupNameConfiguration` below.
  final pulumi.Input<CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogGroupNameConfiguration>? logGroupNameConfiguration;
  /// Configuration block for logs encryption settings. See `logsEncryptionConfiguration` below.
  final pulumi.Input<CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration>? logsEncryptionConfiguration;

  /// Creates a new [CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration].
  /// [backupConfiguration] Configuration block for backup settings. See `backupConfiguration` below.
  /// [logGroupNameConfiguration] Configuration block for a naming pattern for destination log groups created during centralization. See `logGroupNameConfiguration` below.
  /// [logsEncryptionConfiguration] Configuration block for logs encryption settings. See `logsEncryptionConfiguration` below.
  const CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration({
    this.backupConfiguration,
    this.logGroupNameConfiguration,
    this.logsEncryptionConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfiguration': ?pulumi.Input.mapOptionalInputValue<CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration, Map<String, dynamic>>(backupConfiguration, (value) => value.toMap()),
      'logGroupNameConfiguration': ?pulumi.Input.mapOptionalInputValue<CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogGroupNameConfiguration, Map<String, dynamic>>(logGroupNameConfiguration, (value) => value.toMap()),
      'logsEncryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration, Map<String, dynamic>>(logsEncryptionConfiguration, (value) => value.toMap()),
    };
  }

  factory CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration(
      backupConfiguration: (() { final guardedValue = map['backupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationBackupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logGroupNameConfiguration: (() { final guardedValue = map['logGroupNameConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogGroupNameConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logsEncryptionConfiguration: (() { final guardedValue = map['logsEncryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationLogsEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'centralization_rule_for_organization_rule_destination_destination_metrics_configuration_backup_configuration.dart';

class CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfiguration {
  /// Configuration block for metrics backup settings. See `destinationMetricsBackupConfiguration` below.
  final pulumi.Input<CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfigurationBackupConfiguration?>? backupConfiguration;

  /// Creates a new [CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfiguration].
  /// [backupConfiguration] Configuration block for metrics backup settings. See `destinationMetricsBackupConfiguration` below.
  const CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfiguration({
    this.backupConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfiguration': ?pulumi.Input.mapOptionalInputValue<CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfigurationBackupConfiguration, Map<String, dynamic>>(backupConfiguration, (value) => value.toMap()),
    };
  }

  factory CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfiguration.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfiguration(
      backupConfiguration: (() { final guardedValue = map['backupConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfigurationBackupConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfigurationBackupConfiguration {
  /// AWS region for backup storage.
  final pulumi.Input<String> region;

  /// Creates a new [CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfigurationBackupConfiguration].
  /// [region] AWS region for backup storage.
  const CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfigurationBackupConfiguration({
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': region,
    };
  }

  factory CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfigurationBackupConfiguration.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfigurationBackupConfiguration(
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

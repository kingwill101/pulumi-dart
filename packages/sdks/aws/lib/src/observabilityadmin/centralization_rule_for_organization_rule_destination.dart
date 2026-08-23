// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'centralization_rule_for_organization_rule_destination_destination_logs_configuration.dart';
import 'centralization_rule_for_organization_rule_destination_destination_metrics_configuration.dart';

class CentralizationRuleForOrganizationRuleDestination {
  /// AWS account ID where telemetry will be centralized.
  final pulumi.Input<String> account;
  /// Configuration block for destination logs settings. See `destinationLogsConfiguration` below.
  final pulumi.Input<CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration>? destinationLogsConfiguration;
  /// Configuration block for destination metrics settings. See `destinationMetricsConfiguration` below.
  final pulumi.Input<CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfiguration>? destinationMetricsConfiguration;
  /// AWS region where telemetry will be centralized.
  final pulumi.Input<String> region;

  /// Creates a new [CentralizationRuleForOrganizationRuleDestination].
  /// [account] AWS account ID where telemetry will be centralized.
  /// [destinationLogsConfiguration] Configuration block for destination logs settings. See `destinationLogsConfiguration` below.
  /// [destinationMetricsConfiguration] Configuration block for destination metrics settings. See `destinationMetricsConfiguration` below.
  /// [region] AWS region where telemetry will be centralized.
  const CentralizationRuleForOrganizationRuleDestination({
    required this.account,
    this.destinationLogsConfiguration,
    this.destinationMetricsConfiguration,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': account,
      'destinationLogsConfiguration': ?pulumi.Input.mapOptionalInputValue<CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration, Map<String, dynamic>>(destinationLogsConfiguration, (value) => value.toMap()),
      'destinationMetricsConfiguration': ?pulumi.Input.mapOptionalInputValue<CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfiguration, Map<String, dynamic>>(destinationMetricsConfiguration, (value) => value.toMap()),
      'region': region,
    };
  }

  factory CentralizationRuleForOrganizationRuleDestination.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleDestination(
      account: pulumi.Input.fromValue(map['account'] as String),
      destinationLogsConfiguration: (() { final guardedValue = map['destinationLogsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationMetricsConfiguration: (() { final guardedValue = map['destinationMetricsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CentralizationRuleForOrganizationRuleDestinationDestinationMetricsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

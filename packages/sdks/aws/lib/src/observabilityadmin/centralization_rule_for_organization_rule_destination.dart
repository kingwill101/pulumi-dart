// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'centralization_rule_for_organization_rule_destination_destination_logs_configuration.dart';

class CentralizationRuleForOrganizationRuleDestination {
  /// AWS account ID where logs will be centralized.
  final pulumi.Input<String> account;
  /// Configuration block for destination logs settings. See `destination_logs_configuration` below.
  final pulumi.Input<CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration>? destinationLogsConfiguration;
  /// AWS region where logs will be centralized.
  final pulumi.Input<String> region;

  /// Creates a new [CentralizationRuleForOrganizationRuleDestination].
  /// [account] AWS account ID where logs will be centralized.
  /// [destinationLogsConfiguration] Configuration block for destination logs settings. See `destination_logs_configuration` below.
  /// [region] AWS region where logs will be centralized.
  CentralizationRuleForOrganizationRuleDestination({
    required this.account,
    this.destinationLogsConfiguration,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': account,
      'destinationLogsConfiguration': ?pulumi.Input.mapOptionalInputValue<CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration, Map<String, dynamic>>(destinationLogsConfiguration, (value) => value.toMap()),
      'region': region,
    };
  }

  factory CentralizationRuleForOrganizationRuleDestination.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleDestination(
      account: (map['account'] as String).input(),
      destinationLogsConfiguration: map['destinationLogsConfiguration'] == null ? null : ((CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration.fromMap((map['destinationLogsConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      region: (map['region'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'centralization_rule_for_organization_rule_destination_destination_logs_configuration.dart';

class CentralizationRuleForOrganizationRuleDestination {
  /// AWS account ID where logs will be centralized.
  final String account;
  /// Configuration block for destination logs settings. See `destination_logs_configuration` below.
  final CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration? destinationLogsConfiguration;
  /// AWS region where logs will be centralized.
  final String region;

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
      'destinationLogsConfiguration': ?destinationLogsConfiguration == null ? null : destinationLogsConfiguration!.toMap(),
      'region': region,
    };
  }

  factory CentralizationRuleForOrganizationRuleDestination.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleDestination(
      account: map['account'] as String,
      destinationLogsConfiguration: map['destinationLogsConfiguration'] == null ? null : CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration.fromMap((map['destinationLogsConfiguration'] as Map).cast<String, dynamic>()),
      region: map['region'] as String,
    );
  }
}


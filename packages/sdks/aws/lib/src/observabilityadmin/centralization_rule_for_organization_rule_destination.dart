// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'centralization_rule_for_organization_rule_destination_destination_logs_configuration.dart';

class CentralizationRuleForOrganizationRuleDestination {
  /// AWS account ID where logs will be centralized.
  final pulumi.Input<String> account;

  /// Configuration block for destination logs settings. See `destination_logs_configuration` below.
  final pulumi.Input<
    CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration
  >?
  destinationLogsConfiguration;

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
      'destinationLogsConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration,
            Map<String, dynamic>
          >(destinationLogsConfiguration, (value) => value.toMap()),
      'region': region,
    };
  }

  factory CentralizationRuleForOrganizationRuleDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return CentralizationRuleForOrganizationRuleDestination(
      account: pulumi.Input.fromValue(map['account'] as String),
      destinationLogsConfiguration: (() {
        final guardedValue = map['destinationLogsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

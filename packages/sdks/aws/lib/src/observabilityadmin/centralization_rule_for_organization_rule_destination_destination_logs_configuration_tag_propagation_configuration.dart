// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationTagPropagationConfiguration {
  /// ARN of the IAM role that the service assumes to propagate source resource tags to centralized destination log groups.
  final pulumi.Input<String> destinationRoleArn;
  /// Strategy for resolving tag conflicts when propagating tags to destination log groups. Valid values: `IN_SYNC`, `ADD_ONLY`, `UPDATE_SYNC`.
  final pulumi.Input<String?>? tagConflictResolutionStrategy;

  /// Creates a new [CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationTagPropagationConfiguration].
  /// [destinationRoleArn] ARN of the IAM role that the service assumes to propagate source resource tags to centralized destination log groups.
  /// [tagConflictResolutionStrategy] Strategy for resolving tag conflicts when propagating tags to destination log groups. Valid values: `IN_SYNC`, `ADD_ONLY`, `UPDATE_SYNC`.
  const CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationTagPropagationConfiguration({
    required this.destinationRoleArn,
    this.tagConflictResolutionStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationRoleArn': destinationRoleArn,
      'tagConflictResolutionStrategy': ?tagConflictResolutionStrategy,
    };
  }

  factory CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationTagPropagationConfiguration.fromMap(Map<String, dynamic> map) {
    return CentralizationRuleForOrganizationRuleDestinationDestinationLogsConfigurationTagPropagationConfiguration(
      destinationRoleArn: pulumi.Input.fromValue(map['destinationRoleArn'] as String),
      tagConflictResolutionStrategy: (() { final guardedValue = map['tagConflictResolutionStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_instances_deployment_targets.dart';
import 'stack_instances_operation_preferences.dart';
import 'stack_instances_stack_instance_summary.dart';

/// Input properties used for looking up and filtering StackInstances resources.
class StackInstancesState {
  /// Accounts where you want to create stack instances in the specified `regions`. You can specify either `accounts` or `deployment_targets`, but not both.
  final pulumi.Input<List<String>>? accounts;
  /// Whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  final pulumi.Input<String>? callAs;
  /// AWS Organizations accounts for which to create stack instances in the `regions`. stack sets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for most of this argument. See deployment_targets below.
  final pulumi.Input<StackInstancesDeploymentTargets>? deploymentTargets;
  /// Preferences for how AWS CloudFormation performs a stack set operation. See operation_preferences below.
  final pulumi.Input<StackInstancesOperationPreferences>? operationPreferences;
  /// Key-value map of input parameters to override from the stack set for these instances. This argument's drift detection is limited to the first account and region since each instance can have unique parameters.
  final pulumi.Input<Map<String, String>>? parameterOverrides;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Regions where you want to create stack instances in the specified `accounts`.
  final pulumi.Input<List<String>>? regions;
  /// Whether to remove the stack instances from the stack set, but not delete the stacks. You can't reassociate a retained stack or add an existing, saved stack to a new stack set. To retain the stack, ensure `retain_stacks = true` has been successfully applied _before_ an apply that would destroy the resource. Defaults to `false`.
  final pulumi.Input<bool>? retainStacks;
  /// List of stack instances created from an organizational unit deployment target. This may not always be set depending on whether CloudFormation returns summaries for your configuration. See `stack_instance_summaries`.
  final pulumi.Input<List<StackInstancesStackInstanceSummary>>? stackInstanceSummaries;
  /// Name or unique ID of the stack set that the stack instance is associated with.
  final pulumi.Input<String>? stackSetId;
  /// Name of the stack set.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? stackSetName;

  /// Creates a new [StackInstancesState].
  /// [accounts] Accounts where you want to create stack instances in the specified `regions`. You can specify either `accounts` or `deployment_targets`, but not both.
  /// [callAs] Whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  /// [deploymentTargets] AWS Organizations accounts for which to create stack instances in the `regions`. stack sets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for most of this argument. See deployment_targets below.
  /// [operationPreferences] Preferences for how AWS CloudFormation performs a stack set operation. See operation_preferences below.
  /// [parameterOverrides] Key-value map of input parameters to override from the stack set for these instances. This argument's drift detection is limited to the first account and region since each instance can have unique parameters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regions] Regions where you want to create stack instances in the specified `accounts`.
  /// [retainStacks] Whether to remove the stack instances from the stack set, but not delete the stacks. You can't reassociate a retained stack or add an existing, saved stack to a new stack set. To retain the stack, ensure `retain_stacks = true` has been successfully applied _before_ an apply that would destroy the resource. Defaults to `false`.
  /// [stackInstanceSummaries] List of stack instances created from an organizational unit deployment target. This may not always be set depending on whether CloudFormation returns summaries for your configuration. See `stack_instance_summaries`.
  /// [stackSetId] Name or unique ID of the stack set that the stack instance is associated with.
  /// [stackSetName] Name of the stack set.
  StackInstancesState({
    this.accounts,
    this.callAs,
    this.deploymentTargets,
    this.operationPreferences,
    this.parameterOverrides,
    this.region,
    this.regions,
    this.retainStacks,
    this.stackInstanceSummaries,
    this.stackSetId,
    this.stackSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accounts': ?accounts,
      'callAs': ?callAs,
      'deploymentTargets': ?pulumi.Input.mapOptionalInputValue<StackInstancesDeploymentTargets, Map<String, dynamic>>(deploymentTargets, (value) => value.toMap()),
      'operationPreferences': ?pulumi.Input.mapOptionalInputValue<StackInstancesOperationPreferences, Map<String, dynamic>>(operationPreferences, (value) => value.toMap()),
      'parameterOverrides': ?parameterOverrides,
      'region': ?region,
      'regions': ?regions,
      'retainStacks': ?retainStacks,
      'stackInstanceSummaries': ?pulumi.Input.mapOptionalInputValue<List<StackInstancesStackInstanceSummary>, List<Map<String, dynamic>>>(stackInstanceSummaries, (value) => pulumi.Input.encodeList<StackInstancesStackInstanceSummary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stackSetId': ?stackSetId,
      'stackSetName': ?stackSetName,
    };
  }

  factory StackInstancesState.fromMap(Map<String, dynamic> map) {
    return StackInstancesState(
      accounts: (() { final guardedValue = map['accounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      callAs: (() { final guardedValue = map['callAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentTargets: (() { final guardedValue = map['deploymentTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StackInstancesDeploymentTargets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operationPreferences: (() { final guardedValue = map['operationPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StackInstancesOperationPreferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parameterOverrides: (() { final guardedValue = map['parameterOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      retainStacks: (() { final guardedValue = map['retainStacks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stackInstanceSummaries: (() { final guardedValue = map['stackInstanceSummaries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StackInstancesStackInstanceSummary>(guardedValue, (value) => StackInstancesStackInstanceSummary.fromMap((value as Map).cast<String, dynamic>()))); })(),
      stackSetId: (() { final guardedValue = map['stackSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackSetName: (() { final guardedValue = map['stackSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


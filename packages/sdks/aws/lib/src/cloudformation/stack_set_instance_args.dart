// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_set_instance_deployment_targets.dart';
import 'stack_set_instance_operation_preferences.dart';

/// {@template pulumi_cloudformation_stack_set_instance_stack_set_instance_args_doc}
/// The set of arguments for StackSetInstance.
/// {@endtemplate}
/// {@macro pulumi_cloudformation_stack_set_instance_stack_set_instance_args_doc}
class StackSetInstanceArgs {
  /// Target AWS Account ID to create a Stack based on the StackSet. Defaults to current account.
  final pulumi.Input<String>? accountId;
  /// Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  final pulumi.Input<String>? callAs;
  /// AWS Organizations accounts to which StackSets deploys. StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for this argument. See deploymentTargets below.
  final pulumi.Input<StackSetInstanceDeploymentTargets>? deploymentTargets;
  /// Preferences for how AWS CloudFormation performs a stack set operation.
  final pulumi.Input<StackSetInstanceOperationPreferences>? operationPreferences;
  /// Key-value map of input parameters to override from the StackSet for this Instance.
  final pulumi.Input<Map<String, String>>? parameterOverrides;
  /// Target AWS Region to create a Stack based on the StackSet. Defaults to current region. Use `stackSetInstanceRegion` instead.
  final pulumi.Input<String>? region;
  /// During resource destroy, remove Instance from StackSet while keeping the Stack and its associated resources. Must be enabled in the state _before_ destroy operation to take effect. You cannot reassociate a retained Stack or add an existing, saved Stack to a new StackSet. Defaults to `false`.
  final pulumi.Input<bool>? retainStack;
  /// Target AWS Region to create a Stack based on the StackSet. Defaults to current region.
  final pulumi.Input<String>? stackSetInstanceRegion;
  /// Name of the StackSet.
  final pulumi.Input<String> stackSetName;

  /// Creates a new [StackSetInstanceArgs].
  /// [accountId] Target AWS Account ID to create a Stack based on the StackSet. Defaults to current account.
  /// [callAs] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  /// [deploymentTargets] AWS Organizations accounts to which StackSets deploys. StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for this argument. See deploymentTargets below.
  /// [operationPreferences] Preferences for how AWS CloudFormation performs a stack set operation.
  /// [parameterOverrides] Key-value map of input parameters to override from the StackSet for this Instance.
  /// [region] Target AWS Region to create a Stack based on the StackSet. Defaults to current region. Use `stackSetInstanceRegion` instead.
  /// [retainStack] During resource destroy, remove Instance from StackSet while keeping the Stack and its associated resources. Must be enabled in the state _before_ destroy operation to take effect. You cannot reassociate a retained Stack or add an existing, saved Stack to a new StackSet. Defaults to `false`.
  /// [stackSetInstanceRegion] Target AWS Region to create a Stack based on the StackSet. Defaults to current region.
  /// [stackSetName] Name of the StackSet.
  const StackSetInstanceArgs({
    this.accountId,
    this.callAs,
    this.deploymentTargets,
    this.operationPreferences,
    this.parameterOverrides,
    this.region,
    this.retainStack,
    this.stackSetInstanceRegion,
    required this.stackSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'callAs': ?callAs,
      'deploymentTargets': ?pulumi.Input.mapOptionalInputValue<StackSetInstanceDeploymentTargets, Map<String, dynamic>>(deploymentTargets, (value) => value.toMap()),
      'operationPreferences': ?pulumi.Input.mapOptionalInputValue<StackSetInstanceOperationPreferences, Map<String, dynamic>>(operationPreferences, (value) => value.toMap()),
      'parameterOverrides': ?parameterOverrides,
      'region': ?region,
      'retainStack': ?retainStack,
      'stackSetInstanceRegion': ?stackSetInstanceRegion,
      'stackSetName': stackSetName,
    };
  }

  factory StackSetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return StackSetInstanceArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      callAs: (() { final guardedValue = map['callAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentTargets: (() { final guardedValue = map['deploymentTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StackSetInstanceDeploymentTargets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operationPreferences: (() { final guardedValue = map['operationPreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StackSetInstanceOperationPreferences.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parameterOverrides: (() { final guardedValue = map['parameterOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retainStack: (() { final guardedValue = map['retainStack']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stackSetInstanceRegion: (() { final guardedValue = map['stackSetInstanceRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stackSetName: pulumi.Input.fromValue(map['stackSetName'] as String),
    );
  }
}

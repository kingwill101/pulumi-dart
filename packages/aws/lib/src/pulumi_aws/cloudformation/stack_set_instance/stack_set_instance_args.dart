// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stack_set_instance_deployment_targets/stack_set_instance_deployment_targets.dart';
import '../stack_set_instance_operation_preferences/stack_set_instance_operation_preferences.dart';

/// The set of arguments for StackSetInstance.
class StackSetInstanceArgs {
  /// Target AWS Account ID to create a Stack based on the StackSet. Defaults to current account.
  final Input<String>? accountId;

  /// Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  final Input<String>? callAs;

  /// AWS Organizations accounts to which StackSets deploys. StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for this argument. See deployment_targets below.
  final Input<StackSetInstanceDeploymentTargets>? deploymentTargets;

  /// Preferences for how AWS CloudFormation performs a stack set operation.
  final Input<StackSetInstanceOperationPreferences>? operationPreferences;

  /// Key-value map of input parameters to override from the StackSet for this Instance.
  final Input<Map<String, String>>? parameterOverrides;

  /// Target AWS Region to create a Stack based on the StackSet. Defaults to current region. Use `stack_set_instance_region` instead.
  final Input<String>? region;

  /// During resource destroy, remove Instance from StackSet while keeping the Stack and its associated resources. Must be enabled in the state _before_ destroy operation to take effect. You cannot reassociate a retained Stack or add an existing, saved Stack to a new StackSet. Defaults to `false`.
  final Input<bool>? retainStack;

  /// Target AWS Region to create a Stack based on the StackSet. Defaults to current region.
  final Input<String>? stackSetInstanceRegion;

  /// Name of the StackSet.
  final Input<String> stackSetName;

  StackSetInstanceArgs({
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
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    final callAsValue = callAs;
    if (callAsValue != null) {
      map['callAs'] = callAsValue;
    }
    final deploymentTargetsValue = deploymentTargets;
    if (deploymentTargetsValue != null) {
      map['deploymentTargets'] = Input.mapOptionalInputValue<
              StackSetInstanceDeploymentTargets, Map<String, dynamic>>(
          deploymentTargetsValue, (value) => value.toMap());
    }
    final operationPreferencesValue = operationPreferences;
    if (operationPreferencesValue != null) {
      map['operationPreferences'] = Input.mapOptionalInputValue<
              StackSetInstanceOperationPreferences, Map<String, dynamic>>(
          operationPreferencesValue, (value) => value.toMap());
    }
    final parameterOverridesValue = parameterOverrides;
    if (parameterOverridesValue != null) {
      map['parameterOverrides'] = parameterOverridesValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final retainStackValue = retainStack;
    if (retainStackValue != null) {
      map['retainStack'] = retainStackValue;
    }
    final stackSetInstanceRegionValue = stackSetInstanceRegion;
    if (stackSetInstanceRegionValue != null) {
      map['stackSetInstanceRegion'] = stackSetInstanceRegionValue;
    }
    map['stackSetName'] = stackSetName;
    return map;
  }

  factory StackSetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return StackSetInstanceArgs(
      accountId: Input.asOptionalInput<String>(map['accountId']),
      callAs: Input.asOptionalInput<String>(map['callAs']),
      deploymentTargets:
          Input.asOptionalInput<StackSetInstanceDeploymentTargets>(
              map['deploymentTargets']),
      operationPreferences:
          Input.asOptionalInput<StackSetInstanceOperationPreferences>(
              map['operationPreferences']),
      parameterOverrides:
          Input.asOptionalInput<Map<String, String>>(map['parameterOverrides']),
      region: Input.asOptionalInput<String>(map['region']),
      retainStack: Input.asOptionalInput<bool>(map['retainStack']),
      stackSetInstanceRegion:
          Input.asOptionalInput<String>(map['stackSetInstanceRegion']),
      stackSetName: Input.asInput<String>(map['stackSetName']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../stack_instances_deployment_targets/stack_instances_deployment_targets.dart';
import '../stack_instances_operation_preferences/stack_instances_operation_preferences.dart';

/// The set of arguments for StackInstances.
class StackInstancesArgs {
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

  /// Name of the stack set.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> stackSetName;

  StackInstancesArgs({
    this.accounts,
    this.callAs,
    this.deploymentTargets,
    this.operationPreferences,
    this.parameterOverrides,
    this.region,
    this.regions,
    this.retainStacks,
    required this.stackSetName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountsValue = accounts;
    if (accountsValue != null) {
      map['accounts'] = accountsValue;
    }
    final callAsValue = callAs;
    if (callAsValue != null) {
      map['callAs'] = callAsValue;
    }
    final deploymentTargetsValue = deploymentTargets;
    if (deploymentTargetsValue != null) {
      map['deploymentTargets'] = pulumi.Input.mapOptionalInputValue<
              StackInstancesDeploymentTargets, Map<String, dynamic>>(
          deploymentTargetsValue, (value) => value.toMap());
    }
    final operationPreferencesValue = operationPreferences;
    if (operationPreferencesValue != null) {
      map['operationPreferences'] = pulumi.Input.mapOptionalInputValue<
              StackInstancesOperationPreferences, Map<String, dynamic>>(
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
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = regionsValue;
    }
    final retainStacksValue = retainStacks;
    if (retainStacksValue != null) {
      map['retainStacks'] = retainStacksValue;
    }
    map['stackSetName'] = stackSetName;
    return map;
  }

  factory StackInstancesArgs.fromMap(Map<String, dynamic> map) {
    return StackInstancesArgs(
      accounts: pulumi.Input.asOptionalInput<List<String>>(map['accounts']),
      callAs: pulumi.Input.asOptionalInput<String>(map['callAs']),
      deploymentTargets:
          pulumi.Input.asOptionalInput<StackInstancesDeploymentTargets>(
              map['deploymentTargets']),
      operationPreferences:
          pulumi.Input.asOptionalInput<StackInstancesOperationPreferences>(
              map['operationPreferences']),
      parameterOverrides: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['parameterOverrides']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      regions: pulumi.Input.asOptionalInput<List<String>>(map['regions']),
      retainStacks: pulumi.Input.asOptionalInput<bool>(map['retainStacks']),
      stackSetName: pulumi.Input.asInput<String>(map['stackSetName']),
    );
  }
}

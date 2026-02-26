// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../stack_instances_deployment_targets/stack_instances_deployment_targets.dart';
import '../stack_instances_operation_preferences/stack_instances_operation_preferences.dart';

/// The set of arguments for StackInstances.
class StackInstancesArgs {
  /// Accounts where you want to create stack instances in the specified <span pulumi-lang-nodejs="`regions`" pulumi-lang-dotnet="`Regions`" pulumi-lang-go="`regions`" pulumi-lang-python="`regions`" pulumi-lang-yaml="`regions`" pulumi-lang-java="`regions`">`regions`</span>. You can specify either <span pulumi-lang-nodejs="`accounts`" pulumi-lang-dotnet="`Accounts`" pulumi-lang-go="`accounts`" pulumi-lang-python="`accounts`" pulumi-lang-yaml="`accounts`" pulumi-lang-java="`accounts`">`accounts`</span> or <span pulumi-lang-nodejs="`deploymentTargets`" pulumi-lang-dotnet="`DeploymentTargets`" pulumi-lang-go="`deploymentTargets`" pulumi-lang-python="`deployment_targets`" pulumi-lang-yaml="`deploymentTargets`" pulumi-lang-java="`deploymentTargets`">`deployment_targets`</span>, but not both.
  final Input<List<String>>? accounts;

  /// Whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  final Input<String>? callAs;

  /// AWS Organizations accounts for which to create stack instances in the <span pulumi-lang-nodejs="`regions`" pulumi-lang-dotnet="`Regions`" pulumi-lang-go="`regions`" pulumi-lang-python="`regions`" pulumi-lang-yaml="`regions`" pulumi-lang-java="`regions`">`regions`</span>. stack sets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for most of this argument. See<span pulumi-lang-nodejs=" deploymentTargets " pulumi-lang-dotnet=" DeploymentTargets " pulumi-lang-go=" deploymentTargets " pulumi-lang-python=" deployment_targets " pulumi-lang-yaml=" deploymentTargets " pulumi-lang-java=" deploymentTargets "> deployment_targets </span>below.
  final Input<StackInstancesDeploymentTargets>? deploymentTargets;

  /// Preferences for how AWS CloudFormation performs a stack set operation. See<span pulumi-lang-nodejs=" operationPreferences " pulumi-lang-dotnet=" OperationPreferences " pulumi-lang-go=" operationPreferences " pulumi-lang-python=" operation_preferences " pulumi-lang-yaml=" operationPreferences " pulumi-lang-java=" operationPreferences "> operation_preferences </span>below.
  final Input<StackInstancesOperationPreferences>? operationPreferences;

  /// Key-value map of input parameters to override from the stack set for these instances. This argument's drift detection is limited to the first account and region since each instance can have unique parameters.
  final Input<Map<String, String>>? parameterOverrides;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Regions where you want to create stack instances in the specified <span pulumi-lang-nodejs="`accounts`" pulumi-lang-dotnet="`Accounts`" pulumi-lang-go="`accounts`" pulumi-lang-python="`accounts`" pulumi-lang-yaml="`accounts`" pulumi-lang-java="`accounts`">`accounts`</span>.
  final Input<List<String>>? regions;

  /// Whether to remove the stack instances from the stack set, but not delete the stacks. You can't reassociate a retained stack or add an existing, saved stack to a new stack set. To retain the stack, ensure <span pulumi-lang-nodejs="`retainStacks " pulumi-lang-dotnet="`RetainStacks " pulumi-lang-go="`retainStacks " pulumi-lang-python="`retain_stacks " pulumi-lang-yaml="`retainStacks " pulumi-lang-java="`retainStacks ">`retain_stacks </span>= true` has been successfully applied _before_ an apply that would destroy the resource. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? retainStacks;

  /// Name of the stack set.
  ///
  /// The following arguments are optional:
  final Input<String> stackSetName;

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
      map['deploymentTargets'] = Input.mapOptionalInputValue<
              StackInstancesDeploymentTargets, Map<String, dynamic>>(
          deploymentTargetsValue, (value) => value.toMap());
    }
    final operationPreferencesValue = operationPreferences;
    if (operationPreferencesValue != null) {
      map['operationPreferences'] = Input.mapOptionalInputValue<
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
      accounts: Input.asOptionalInput<List<String>>(map['accounts']),
      callAs: Input.asOptionalInput<String>(map['callAs']),
      deploymentTargets: Input.asOptionalInput<StackInstancesDeploymentTargets>(
          map['deploymentTargets']),
      operationPreferences:
          Input.asOptionalInput<StackInstancesOperationPreferences>(
              map['operationPreferences']),
      parameterOverrides:
          Input.asOptionalInput<Map<String, String>>(map['parameterOverrides']),
      region: Input.asOptionalInput<String>(map['region']),
      regions: Input.asOptionalInput<List<String>>(map['regions']),
      retainStacks: Input.asOptionalInput<bool>(map['retainStacks']),
      stackSetName: Input.asInput<String>(map['stackSetName']),
    );
  }
}

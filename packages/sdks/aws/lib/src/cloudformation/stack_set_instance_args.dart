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
  /// AWS Organizations accounts to which StackSets deploys. StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for this argument. See deployment_targets below.
  final pulumi.Input<StackSetInstanceDeploymentTargets>? deploymentTargets;
  /// Preferences for how AWS CloudFormation performs a stack set operation.
  final pulumi.Input<StackSetInstanceOperationPreferences>? operationPreferences;
  /// Key-value map of input parameters to override from the StackSet for this Instance.
  final pulumi.Input<Map<String, String>>? parameterOverrides;
  /// Target AWS Region to create a Stack based on the StackSet. Defaults to current region. Use `stack_set_instance_region` instead.
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
  /// [deploymentTargets] AWS Organizations accounts to which StackSets deploys. StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for this argument. See deployment_targets below.
  /// [operationPreferences] Preferences for how AWS CloudFormation performs a stack set operation.
  /// [parameterOverrides] Key-value map of input parameters to override from the StackSet for this Instance.
  /// [region] Target AWS Region to create a Stack based on the StackSet. Defaults to current region. Use `stack_set_instance_region` instead.
  /// [retainStack] During resource destroy, remove Instance from StackSet while keeping the Stack and its associated resources. Must be enabled in the state _before_ destroy operation to take effect. You cannot reassociate a retained Stack or add an existing, saved Stack to a new StackSet. Defaults to `false`.
  /// [stackSetInstanceRegion] Target AWS Region to create a Stack based on the StackSet. Defaults to current region.
  /// [stackSetName] Name of the StackSet.
  StackSetInstanceArgs({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? callAs,
    pulumi.Output<StackSetInstanceDeploymentTargets>? deploymentTargets,
    pulumi.Output<StackSetInstanceOperationPreferences>? operationPreferences,
    pulumi.Output<Map<String, String>>? parameterOverrides,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? retainStack,
    pulumi.Output<String>? stackSetInstanceRegion,
    required pulumi.Output<String> stackSetName,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      callAs = pulumi.Input.asOptionalInput<String>(callAs),
      deploymentTargets = pulumi.Input.asOptionalInput<StackSetInstanceDeploymentTargets>(deploymentTargets),
      operationPreferences = pulumi.Input.asOptionalInput<StackSetInstanceOperationPreferences>(operationPreferences),
      parameterOverrides = pulumi.Input.asOptionalInput<Map<String, String>>(parameterOverrides),
      region = pulumi.Input.asOptionalInput<String>(region),
      retainStack = pulumi.Input.asOptionalInput<bool>(retainStack),
      stackSetInstanceRegion = pulumi.Input.asOptionalInput<String>(stackSetInstanceRegion),
      stackSetName = pulumi.Input.asInput<String>(stackSetName);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      callAs: map['callAs'] == null ? null : pulumi.Output.create<String>(map['callAs'] as String),
      deploymentTargets: map['deploymentTargets'] == null ? null : pulumi.Output.create<StackSetInstanceDeploymentTargets>(StackSetInstanceDeploymentTargets.fromMap((map['deploymentTargets'] as Map).cast<String, dynamic>())),
      operationPreferences: map['operationPreferences'] == null ? null : pulumi.Output.create<StackSetInstanceOperationPreferences>(StackSetInstanceOperationPreferences.fromMap((map['operationPreferences'] as Map).cast<String, dynamic>())),
      parameterOverrides: map['parameterOverrides'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameterOverrides'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      retainStack: map['retainStack'] == null ? null : pulumi.Output.create<bool>(map['retainStack'] as bool),
      stackSetInstanceRegion: map['stackSetInstanceRegion'] == null ? null : pulumi.Output.create<String>(map['stackSetInstanceRegion'] as String),
      stackSetName: pulumi.Output.create<String>(map['stackSetName'] as String),
    );
  }
}


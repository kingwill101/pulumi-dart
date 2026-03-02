// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_set_instance_deployment_targets.dart';
import 'stack_set_instance_operation_preferences.dart';
import 'stack_set_instance_stack_instance_summary.dart';

/// Input properties used for looking up and filtering StackSetInstance resources.
class StackSetInstanceState {
  /// Target AWS Account ID to create a Stack based on the StackSet. Defaults to current account.
  final pulumi.Input<String>? accountId;
  /// Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  final pulumi.Input<String>? callAs;
  /// AWS Organizations accounts to which StackSets deploys. StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for this argument. See deployment_targets below.
  final pulumi.Input<StackSetInstanceDeploymentTargets>? deploymentTargets;
  /// Preferences for how AWS CloudFormation performs a stack set operation.
  final pulumi.Input<StackSetInstanceOperationPreferences>? operationPreferences;
  /// Organizational unit ID in which the stack is deployed.
  final pulumi.Input<String>? organizationalUnitId;
  /// Key-value map of input parameters to override from the StackSet for this Instance.
  final pulumi.Input<Map<String, String>>? parameterOverrides;
  /// Target AWS Region to create a Stack based on the StackSet. Defaults to current region. Use `stack_set_instance_region` instead.
  final pulumi.Input<String>? region;
  /// During resource destroy, remove Instance from StackSet while keeping the Stack and its associated resources. Must be enabled in the state _before_ destroy operation to take effect. You cannot reassociate a retained Stack or add an existing, saved Stack to a new StackSet. Defaults to `false`.
  final pulumi.Input<bool>? retainStack;
  /// Stack identifier.
  final pulumi.Input<String>? stackId;
  /// List of stack instances created from an organizational unit deployment target. This will only be populated when `deployment_targets` is set. See `stack_instance_summaries`.
  final pulumi.Input<List<StackSetInstanceStackInstanceSummary>>? stackInstanceSummaries;
  /// Target AWS Region to create a Stack based on the StackSet. Defaults to current region.
  final pulumi.Input<String>? stackSetInstanceRegion;
  /// Name of the StackSet.
  final pulumi.Input<String>? stackSetName;

  /// Creates a new [StackSetInstanceState].
  /// [accountId] Target AWS Account ID to create a Stack based on the StackSet. Defaults to current account.
  /// [callAs] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: `SELF` (default), `DELEGATED_ADMIN`.
  /// [deploymentTargets] AWS Organizations accounts to which StackSets deploys. StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for this argument. See deployment_targets below.
  /// [operationPreferences] Preferences for how AWS CloudFormation performs a stack set operation.
  /// [organizationalUnitId] Organizational unit ID in which the stack is deployed.
  /// [parameterOverrides] Key-value map of input parameters to override from the StackSet for this Instance.
  /// [region] Target AWS Region to create a Stack based on the StackSet. Defaults to current region. Use `stack_set_instance_region` instead.
  /// [retainStack] During resource destroy, remove Instance from StackSet while keeping the Stack and its associated resources. Must be enabled in the state _before_ destroy operation to take effect. You cannot reassociate a retained Stack or add an existing, saved Stack to a new StackSet. Defaults to `false`.
  /// [stackId] Stack identifier.
  /// [stackInstanceSummaries] List of stack instances created from an organizational unit deployment target. This will only be populated when `deployment_targets` is set. See `stack_instance_summaries`.
  /// [stackSetInstanceRegion] Target AWS Region to create a Stack based on the StackSet. Defaults to current region.
  /// [stackSetName] Name of the StackSet.
  StackSetInstanceState({
    this.accountId,
    this.callAs,
    this.deploymentTargets,
    this.operationPreferences,
    this.organizationalUnitId,
    this.parameterOverrides,
    this.region,
    this.retainStack,
    this.stackId,
    this.stackInstanceSummaries,
    this.stackSetInstanceRegion,
    this.stackSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'callAs': ?callAs,
      'deploymentTargets': ?pulumi.Input.mapOptionalInputValue<StackSetInstanceDeploymentTargets, Map<String, dynamic>>(deploymentTargets, (value) => value.toMap()),
      'operationPreferences': ?pulumi.Input.mapOptionalInputValue<StackSetInstanceOperationPreferences, Map<String, dynamic>>(operationPreferences, (value) => value.toMap()),
      'organizationalUnitId': ?organizationalUnitId,
      'parameterOverrides': ?parameterOverrides,
      'region': ?region,
      'retainStack': ?retainStack,
      'stackId': ?stackId,
      'stackInstanceSummaries': ?pulumi.Input.mapOptionalInputValue<List<StackSetInstanceStackInstanceSummary>, List<Map<String, dynamic>>>(stackInstanceSummaries, (value) => pulumi.Input.encodeList<StackSetInstanceStackInstanceSummary, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stackSetInstanceRegion': ?stackSetInstanceRegion,
      'stackSetName': ?stackSetName,
    };
  }

  factory StackSetInstanceState.fromMap(Map<String, dynamic> map) {
    return StackSetInstanceState(
      accountId: map['accountId'] == null ? null : ((map['accountId'] as String).input()).input(),
      callAs: map['callAs'] == null ? null : ((map['callAs'] as String).input()).input(),
      deploymentTargets: map['deploymentTargets'] == null ? null : ((StackSetInstanceDeploymentTargets.fromMap((map['deploymentTargets']! as Map).cast<String, dynamic>())).input()).input(),
      operationPreferences: map['operationPreferences'] == null ? null : ((StackSetInstanceOperationPreferences.fromMap((map['operationPreferences']! as Map).cast<String, dynamic>())).input()).input(),
      organizationalUnitId: map['organizationalUnitId'] == null ? null : ((map['organizationalUnitId'] as String).input()).input(),
      parameterOverrides: map['parameterOverrides'] == null ? null : (((map['parameterOverrides'] as Map).cast<String, String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      retainStack: map['retainStack'] == null ? null : ((map['retainStack'] as bool).input()).input(),
      stackId: map['stackId'] == null ? null : ((map['stackId'] as String).input()).input(),
      stackInstanceSummaries: map['stackInstanceSummaries'] == null ? null : ((pulumi.Input.decodeList<StackSetInstanceStackInstanceSummary>(map['stackInstanceSummaries']!, (value) => StackSetInstanceStackInstanceSummary.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      stackSetInstanceRegion: map['stackSetInstanceRegion'] == null ? null : ((map['stackSetInstanceRegion'] as String).input()).input(),
      stackSetName: map['stackSetName'] == null ? null : ((map['stackSetName'] as String).input()).input(),
    );
  }
}


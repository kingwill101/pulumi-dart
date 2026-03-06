// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_provision_config_scheduled_action.dart';
import 'v3_provision_config_target_tracking_policy.dart';

/// {@template pulumi_fc_v3_provision_config_v3_provision_config_args_doc}
/// The set of arguments for V3ProvisionConfig.
/// {@endtemplate}
/// {@macro pulumi_fc_v3_provision_config_v3_provision_config_args_doc}
class V3ProvisionConfigArgs {
  /// Whether the CPU is always allocated. The default value is true.
  final pulumi.Input<bool>? alwaysAllocateCpu;
  /// Whether to always assign GPU to function instance
  final pulumi.Input<bool>? alwaysAllocateGpu;
  /// The name of the function. If this parameter is not specified, the provisioned configurations of all functions are listed.
  final pulumi.Input<String> functionName;
  /// The function alias or LATEST.
  final pulumi.Input<String>? qualifier;
  /// Timing policy configuration See `scheduled_actions` below.
  final pulumi.Input<List<V3ProvisionConfigScheduledAction>>? scheduledActions;
  /// Number of reserved target resources. The value range is [0,10000].
  final pulumi.Input<int>? target;
  /// Metric tracking scaling policy configuration See `target_tracking_policies` below.
  final pulumi.Input<List<V3ProvisionConfigTargetTrackingPolicy>>? targetTrackingPolicies;

  /// Creates a new [V3ProvisionConfigArgs].
  /// [alwaysAllocateCpu] Whether the CPU is always allocated. The default value is true.
  /// [alwaysAllocateGpu] Whether to always assign GPU to function instance
  /// [functionName] The name of the function. If this parameter is not specified, the provisioned configurations of all functions are listed.
  /// [qualifier] The function alias or LATEST.
  /// [scheduledActions] Timing policy configuration See `scheduled_actions` below.
  /// [target] Number of reserved target resources. The value range is [0,10000].
  /// [targetTrackingPolicies] Metric tracking scaling policy configuration See `target_tracking_policies` below.
  const V3ProvisionConfigArgs({
    this.alwaysAllocateCpu,
    this.alwaysAllocateGpu,
    required this.functionName,
    this.qualifier,
    this.scheduledActions,
    this.target,
    this.targetTrackingPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysAllocateCpu': ?alwaysAllocateCpu,
      'alwaysAllocateGpu': ?alwaysAllocateGpu,
      'functionName': functionName,
      'qualifier': ?qualifier,
      'scheduledActions': ?pulumi.Input.mapOptionalInputValue<List<V3ProvisionConfigScheduledAction>, List<Map<String, dynamic>>>(scheduledActions, (value) => pulumi.Input.encodeList<V3ProvisionConfigScheduledAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'target': ?target,
      'targetTrackingPolicies': ?pulumi.Input.mapOptionalInputValue<List<V3ProvisionConfigTargetTrackingPolicy>, List<Map<String, dynamic>>>(targetTrackingPolicies, (value) => pulumi.Input.encodeList<V3ProvisionConfigTargetTrackingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V3ProvisionConfigArgs.fromMap(Map<String, dynamic> map) {
    return V3ProvisionConfigArgs(
      alwaysAllocateCpu: (() { final guardedValue = map['alwaysAllocateCpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      alwaysAllocateGpu: (() { final guardedValue = map['alwaysAllocateGpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduledActions: (() { final guardedValue = map['scheduledActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V3ProvisionConfigScheduledAction>(guardedValue, (value) => V3ProvisionConfigScheduledAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetTrackingPolicies: (() { final guardedValue = map['targetTrackingPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V3ProvisionConfigTargetTrackingPolicy>(guardedValue, (value) => V3ProvisionConfigTargetTrackingPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


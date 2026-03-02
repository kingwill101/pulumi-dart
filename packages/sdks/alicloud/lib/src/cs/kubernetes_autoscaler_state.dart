// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_autoscaler_nodepool.dart';

/// Input properties used for looking up and filtering KubernetesAutoscaler resources.
class KubernetesAutoscalerState {
  /// The id of kubernetes cluster.
  final pulumi.Input<String>? clusterId;
  /// The cool_down_duration option of cluster-autoscaler.
  final pulumi.Input<String>? coolDownDuration;
  /// The defer_scale_in_duration option of cluster-autoscaler.
  final pulumi.Input<String>? deferScaleInDuration;
  /// The list of the node pools. See `nodepools` below.
  final pulumi.Input<List<KubernetesAutoscalerNodepool>>? nodepools;
  /// Enable autoscaler access to alibabacloud service by ecs ramrole token. default: false
  final pulumi.Input<bool>? useEcsRamRoleToken;
  /// The utilization option of cluster-autoscaler.
  final pulumi.Input<String>? utilization;

  /// Creates a new [KubernetesAutoscalerState].
  /// [clusterId] The id of kubernetes cluster.
  /// [coolDownDuration] The cool_down_duration option of cluster-autoscaler.
  /// [deferScaleInDuration] The defer_scale_in_duration option of cluster-autoscaler.
  /// [nodepools] The list of the node pools. See `nodepools` below.
  /// [useEcsRamRoleToken] Enable autoscaler access to alibabacloud service by ecs ramrole token. default: false
  /// [utilization] The utilization option of cluster-autoscaler.
  KubernetesAutoscalerState({
    this.clusterId,
    this.coolDownDuration,
    this.deferScaleInDuration,
    this.nodepools,
    this.useEcsRamRoleToken,
    this.utilization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'coolDownDuration': ?coolDownDuration,
      'deferScaleInDuration': ?deferScaleInDuration,
      'nodepools': ?pulumi.Input.mapOptionalInputValue<List<KubernetesAutoscalerNodepool>, List<Map<String, dynamic>>>(nodepools, (value) => pulumi.Input.encodeList<KubernetesAutoscalerNodepool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'useEcsRamRoleToken': ?useEcsRamRoleToken,
      'utilization': ?utilization,
    };
  }

  factory KubernetesAutoscalerState.fromMap(Map<String, dynamic> map) {
    return KubernetesAutoscalerState(
      clusterId: map['clusterId'] == null ? null : (map['clusterId']! as String).input(),
      coolDownDuration: map['coolDownDuration'] == null ? null : (map['coolDownDuration']! as String).input(),
      deferScaleInDuration: map['deferScaleInDuration'] == null ? null : (map['deferScaleInDuration']! as String).input(),
      nodepools: map['nodepools'] == null ? null : (pulumi.Input.decodeList<KubernetesAutoscalerNodepool>(map['nodepools']!, (value) => KubernetesAutoscalerNodepool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      useEcsRamRoleToken: map['useEcsRamRoleToken'] == null ? null : (map['useEcsRamRoleToken']! as bool).input(),
      utilization: map['utilization'] == null ? null : (map['utilization']! as String).input(),
    );
  }
}


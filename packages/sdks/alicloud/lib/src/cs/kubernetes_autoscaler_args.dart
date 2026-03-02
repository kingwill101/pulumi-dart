// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_autoscaler_nodepool.dart';

/// {@template pulumi_cs_kubernetes_autoscaler_kubernetes_autoscaler_args_doc}
/// The set of arguments for KubernetesAutoscaler.
/// {@endtemplate}
/// {@macro pulumi_cs_kubernetes_autoscaler_kubernetes_autoscaler_args_doc}
class KubernetesAutoscalerArgs {
  /// The id of kubernetes cluster.
  final pulumi.Input<String> clusterId;
  /// The cool_down_duration option of cluster-autoscaler.
  final pulumi.Input<String> coolDownDuration;
  /// The defer_scale_in_duration option of cluster-autoscaler.
  final pulumi.Input<String> deferScaleInDuration;
  /// The list of the node pools. See `nodepools` below.
  final pulumi.Input<List<KubernetesAutoscalerNodepool>>? nodepools;
  /// Enable autoscaler access to alibabacloud service by ecs ramrole token. default: false
  final pulumi.Input<bool>? useEcsRamRoleToken;
  /// The utilization option of cluster-autoscaler.
  final pulumi.Input<String> utilization;

  /// Creates a new [KubernetesAutoscalerArgs].
  /// [clusterId] The id of kubernetes cluster.
  /// [coolDownDuration] The cool_down_duration option of cluster-autoscaler.
  /// [deferScaleInDuration] The defer_scale_in_duration option of cluster-autoscaler.
  /// [nodepools] The list of the node pools. See `nodepools` below.
  /// [useEcsRamRoleToken] Enable autoscaler access to alibabacloud service by ecs ramrole token. default: false
  /// [utilization] The utilization option of cluster-autoscaler.
  KubernetesAutoscalerArgs({
    required this.clusterId,
    required this.coolDownDuration,
    required this.deferScaleInDuration,
    this.nodepools,
    this.useEcsRamRoleToken,
    required this.utilization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'coolDownDuration': coolDownDuration,
      'deferScaleInDuration': deferScaleInDuration,
      'nodepools': ?pulumi.Input.mapOptionalInputValue<List<KubernetesAutoscalerNodepool>, List<Map<String, dynamic>>>(nodepools, (value) => pulumi.Input.encodeList<KubernetesAutoscalerNodepool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'useEcsRamRoleToken': ?useEcsRamRoleToken,
      'utilization': utilization,
    };
  }

  factory KubernetesAutoscalerArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesAutoscalerArgs(
      clusterId: (map['clusterId'] as String).input(),
      coolDownDuration: (map['coolDownDuration'] as String).input(),
      deferScaleInDuration: (map['deferScaleInDuration'] as String).input(),
      nodepools: map['nodepools'] == null ? null : (pulumi.Input.decodeList<KubernetesAutoscalerNodepool>(map['nodepools']!, (value) => KubernetesAutoscalerNodepool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      useEcsRamRoleToken: map['useEcsRamRoleToken'] == null ? null : (map['useEcsRamRoleToken']! as bool).input(),
      utilization: (map['utilization'] as String).input(),
    );
  }
}


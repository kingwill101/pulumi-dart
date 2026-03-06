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
  const KubernetesAutoscalerArgs({
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
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      coolDownDuration: pulumi.Input.fromValue(map['coolDownDuration'] as String),
      deferScaleInDuration: pulumi.Input.fromValue(map['deferScaleInDuration'] as String),
      nodepools: (() { final guardedValue = map['nodepools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KubernetesAutoscalerNodepool>(guardedValue, (value) => KubernetesAutoscalerNodepool.fromMap((value as Map).cast<String, dynamic>()))); })(),
      useEcsRamRoleToken: (() { final guardedValue = map['useEcsRamRoleToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      utilization: pulumi.Input.fromValue(map['utilization'] as String),
    );
  }
}


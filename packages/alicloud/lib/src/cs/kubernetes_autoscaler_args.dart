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
    required String clusterId,
    required String coolDownDuration,
    required String deferScaleInDuration,
    List<KubernetesAutoscalerNodepool>? nodepools,
    bool? useEcsRamRoleToken,
    required String utilization,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      coolDownDuration = pulumi.Input.asInput<String>(coolDownDuration),
      deferScaleInDuration = pulumi.Input.asInput<String>(deferScaleInDuration),
      nodepools = pulumi.Input.asOptionalInput<List<KubernetesAutoscalerNodepool>>(nodepools),
      useEcsRamRoleToken = pulumi.Input.asOptionalInput<bool>(useEcsRamRoleToken),
      utilization = pulumi.Input.asInput<String>(utilization);

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
      clusterId: map['clusterId'] as String,
      coolDownDuration: map['coolDownDuration'] as String,
      deferScaleInDuration: map['deferScaleInDuration'] as String,
      nodepools: map['nodepools'] == null ? null : pulumi.Input.decodeList<KubernetesAutoscalerNodepool>(map['nodepools'], (value) => KubernetesAutoscalerNodepool.fromMap((value as Map).cast<String, dynamic>())),
      useEcsRamRoleToken: map['useEcsRamRoleToken'] == null ? null : map['useEcsRamRoleToken'] as bool,
      utilization: map['utilization'] as String,
    );
  }
}


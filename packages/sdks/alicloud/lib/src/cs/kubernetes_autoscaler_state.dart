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
    pulumi.Output<String>? clusterId,
    pulumi.Output<String>? coolDownDuration,
    pulumi.Output<String>? deferScaleInDuration,
    pulumi.Output<List<KubernetesAutoscalerNodepool>>? nodepools,
    pulumi.Output<bool>? useEcsRamRoleToken,
    pulumi.Output<String>? utilization,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      coolDownDuration = pulumi.Input.asOptionalInput<String>(coolDownDuration),
      deferScaleInDuration = pulumi.Input.asOptionalInput<String>(deferScaleInDuration),
      nodepools = pulumi.Input.asOptionalInput<List<KubernetesAutoscalerNodepool>>(nodepools),
      useEcsRamRoleToken = pulumi.Input.asOptionalInput<bool>(useEcsRamRoleToken),
      utilization = pulumi.Input.asOptionalInput<String>(utilization);

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
      clusterId: map['clusterId'] == null ? null : pulumi.Output.create<String>(map['clusterId'] as String),
      coolDownDuration: map['coolDownDuration'] == null ? null : pulumi.Output.create<String>(map['coolDownDuration'] as String),
      deferScaleInDuration: map['deferScaleInDuration'] == null ? null : pulumi.Output.create<String>(map['deferScaleInDuration'] as String),
      nodepools: map['nodepools'] == null ? null : pulumi.Output.create<List<KubernetesAutoscalerNodepool>>(pulumi.Input.decodeList<KubernetesAutoscalerNodepool>(map['nodepools'], (value) => KubernetesAutoscalerNodepool.fromMap((value as Map).cast<String, dynamic>()))),
      useEcsRamRoleToken: map['useEcsRamRoleToken'] == null ? null : pulumi.Output.create<bool>(map['useEcsRamRoleToken'] as bool),
      utilization: map['utilization'] == null ? null : pulumi.Output.create<String>(map['utilization'] as String),
    );
  }
}


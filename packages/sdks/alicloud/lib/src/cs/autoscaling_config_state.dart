// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AutoscalingConfig resources.
class AutoscalingConfigState {
  /// The id of kubernetes cluster.
  final pulumi.Input<String>? clusterId;

  /// Specify the time interval between detecting a scale-in requirement (when the threshold is reached) and actually executing the scale-in operation (reducing the number of Pods). Default is `10m`. If the delay (cooldown) value is set too long, there could be complaints that the Horizontal Pod Autoscaler is not responsive to workload changes. However, if the delay value is set too short, the scale of the replicas set may keep thrashing as usual.
  final pulumi.Input<String>? coolDownDuration;

  /// If true DaemonSet pods will be  terminated from nodes. Default is `false`.
  final pulumi.Input<bool>? daemonsetEvictionForNodes;

  /// The policy for selecting which node pool to scale. Valid values: `least-waste`, `random`, `priority`. For scaler type `goatscaler`, only the `least-waste` expander is currently supported. For more information on these policies, see [Configure auto scaling](https://www.alibabacloud.com/help/en/container-service-for-kubernetes/latest/auto-scaling-of-nodes#section-3bg-2ko-inl)
  final pulumi.Input<String>? expander;

  /// The scale-in threshold for GPU instance. Default is `0.5`.
  final pulumi.Input<String>? gpuUtilizationThreshold;

  /// Maximum number of seconds CA waits for pod termination when trying to scale down a node. Default is `14400`.
  final pulumi.Input<int>? maxGracefulTerminationSec;

  /// Minimum number of replicas that a replica set or replication controller should have to allow their pods deletion in scale down. Default is `0`.
  final pulumi.Input<int>? minReplicaCount;

  /// Priority settings for autoscaling node pool scaling groups. This parameter only takes effect when `expander` is set to `priority`. Only supports scaler type `cluster-autoscaler`. Uses key-value pairs where the key is the priority value, and the value is a comma-separated list of scaling group IDs. High numerical values indicate higher priority.
  final pulumi.Input<Map<String, String>>? priorities;

  /// Should CA delete the K8s node object when recycle node has scaled down successfully. Default is `false`.
  final pulumi.Input<bool>? recycleNodeDeletionEnabled;

  /// Specify whether to allow the scale-in of nodes. Default is `true`.
  final pulumi.Input<bool>? scaleDownEnabled;

  /// Should CA scale up when there 0 ready nodes. Default is `true`.
  final pulumi.Input<bool>? scaleUpFromZero;

  /// The type of autoscaler. Valid values: `cluster-autoscaler`, `goatscaler`. For cluster version 1.22 and below, we only support `cluster-autoscaler`. When switching from `cluster-autoscaler` to `goatscaler`, all configuration parameters will be automatically migrated.
  final pulumi.Input<String>? scalerType;

  /// The interval at which the cluster is reevaluated for scaling. Default is `30s`.
  final pulumi.Input<String>? scanInterval;

  /// If true cluster autoscaler will never delete nodes with pods with local storage, e.g. EmptyDir or HostPath. Default is `false`.
  final pulumi.Input<bool>? skipNodesWithLocalStorage;

  /// If true cluster autoscaler will never delete nodes with pods from kube-system (except for DaemonSet or mirror pods). Default is `true`.
  final pulumi.Input<bool>? skipNodesWithSystemPods;

  /// Specify the time interval during which autoscaler does not perform scale-in operations after the most recent scale-out completion. Nodes added through scale-out can only be considered for scale-in after the period has elapsed. Default is `10m`.
  final pulumi.Input<String>? unneededDuration;

  /// The scale-in a threshold. Default is `0.5`.
  final pulumi.Input<String>? utilizationThreshold;

  /// Creates a new [AutoscalingConfigState].
  /// [clusterId] The id of kubernetes cluster.
  /// [coolDownDuration] Specify the time interval between detecting a scale-in requirement (when the threshold is reached) and actually executing the scale-in operation (reducing the number of Pods). Default is `10m`. If the delay (cooldown) value is set too long, there could be complaints that the Horizontal Pod Autoscaler is not responsive to workload changes. However, if the delay value is set too short, the scale of the replicas set may keep thrashing as usual.
  /// [daemonsetEvictionForNodes] If true DaemonSet pods will be  terminated from nodes. Default is `false`.
  /// [expander] The policy for selecting which node pool to scale. Valid values: `least-waste`, `random`, `priority`. For scaler type `goatscaler`, only the `least-waste` expander is currently supported. For more information on these policies, see [Configure auto scaling](https://www.alibabacloud.com/help/en/container-service-for-kubernetes/latest/auto-scaling-of-nodes#section-3bg-2ko-inl)
  /// [gpuUtilizationThreshold] The scale-in threshold for GPU instance. Default is `0.5`.
  /// [maxGracefulTerminationSec] Maximum number of seconds CA waits for pod termination when trying to scale down a node. Default is `14400`.
  /// [minReplicaCount] Minimum number of replicas that a replica set or replication controller should have to allow their pods deletion in scale down. Default is `0`.
  /// [priorities] Priority settings for autoscaling node pool scaling groups. This parameter only takes effect when `expander` is set to `priority`. Only supports scaler type `cluster-autoscaler`. Uses key-value pairs where the key is the priority value, and the value is a comma-separated list of scaling group IDs. High numerical values indicate higher priority.
  /// [recycleNodeDeletionEnabled] Should CA delete the K8s node object when recycle node has scaled down successfully. Default is `false`.
  /// [scaleDownEnabled] Specify whether to allow the scale-in of nodes. Default is `true`.
  /// [scaleUpFromZero] Should CA scale up when there 0 ready nodes. Default is `true`.
  /// [scalerType] The type of autoscaler. Valid values: `cluster-autoscaler`, `goatscaler`. For cluster version 1.22 and below, we only support `cluster-autoscaler`. When switching from `cluster-autoscaler` to `goatscaler`, all configuration parameters will be automatically migrated.
  /// [scanInterval] The interval at which the cluster is reevaluated for scaling. Default is `30s`.
  /// [skipNodesWithLocalStorage] If true cluster autoscaler will never delete nodes with pods with local storage, e.g. EmptyDir or HostPath. Default is `false`.
  /// [skipNodesWithSystemPods] If true cluster autoscaler will never delete nodes with pods from kube-system (except for DaemonSet or mirror pods). Default is `true`.
  /// [unneededDuration] Specify the time interval during which autoscaler does not perform scale-in operations after the most recent scale-out completion. Nodes added through scale-out can only be considered for scale-in after the period has elapsed. Default is `10m`.
  /// [utilizationThreshold] The scale-in a threshold. Default is `0.5`.
  AutoscalingConfigState({
    this.clusterId,
    this.coolDownDuration,
    this.daemonsetEvictionForNodes,
    this.expander,
    this.gpuUtilizationThreshold,
    this.maxGracefulTerminationSec,
    this.minReplicaCount,
    this.priorities,
    this.recycleNodeDeletionEnabled,
    this.scaleDownEnabled,
    this.scaleUpFromZero,
    this.scalerType,
    this.scanInterval,
    this.skipNodesWithLocalStorage,
    this.skipNodesWithSystemPods,
    this.unneededDuration,
    this.utilizationThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'coolDownDuration': ?coolDownDuration,
      'daemonsetEvictionForNodes': ?daemonsetEvictionForNodes,
      'expander': ?expander,
      'gpuUtilizationThreshold': ?gpuUtilizationThreshold,
      'maxGracefulTerminationSec': ?maxGracefulTerminationSec,
      'minReplicaCount': ?minReplicaCount,
      'priorities': ?priorities,
      'recycleNodeDeletionEnabled': ?recycleNodeDeletionEnabled,
      'scaleDownEnabled': ?scaleDownEnabled,
      'scaleUpFromZero': ?scaleUpFromZero,
      'scalerType': ?scalerType,
      'scanInterval': ?scanInterval,
      'skipNodesWithLocalStorage': ?skipNodesWithLocalStorage,
      'skipNodesWithSystemPods': ?skipNodesWithSystemPods,
      'unneededDuration': ?unneededDuration,
      'utilizationThreshold': ?utilizationThreshold,
    };
  }

  factory AutoscalingConfigState.fromMap(Map<String, dynamic> map) {
    return AutoscalingConfigState(
      clusterId: (() {
        final guardedValue = map['clusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      coolDownDuration: (() {
        final guardedValue = map['coolDownDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      daemonsetEvictionForNodes: (() {
        final guardedValue = map['daemonsetEvictionForNodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      expander: (() {
        final guardedValue = map['expander'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gpuUtilizationThreshold: (() {
        final guardedValue = map['gpuUtilizationThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxGracefulTerminationSec: (() {
        final guardedValue = map['maxGracefulTerminationSec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minReplicaCount: (() {
        final guardedValue = map['minReplicaCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      priorities: (() {
        final guardedValue = map['priorities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      recycleNodeDeletionEnabled: (() {
        final guardedValue = map['recycleNodeDeletionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      scaleDownEnabled: (() {
        final guardedValue = map['scaleDownEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      scaleUpFromZero: (() {
        final guardedValue = map['scaleUpFromZero'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      scalerType: (() {
        final guardedValue = map['scalerType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scanInterval: (() {
        final guardedValue = map['scanInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skipNodesWithLocalStorage: (() {
        final guardedValue = map['skipNodesWithLocalStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      skipNodesWithSystemPods: (() {
        final guardedValue = map['skipNodesWithSystemPods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      unneededDuration: (() {
        final guardedValue = map['unneededDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      utilizationThreshold: (() {
        final guardedValue = map['utilizationThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

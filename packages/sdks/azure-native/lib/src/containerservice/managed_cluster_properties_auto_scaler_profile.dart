// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters to be applied to the cluster-autoscaler when enabled
class ManagedClusterPropertiesAutoScalerProfile {
  /// Detects similar node pools and balances the number of nodes between them. Valid values are 'true' and 'false'
  final pulumi.Input<String?>? balanceSimilarNodeGroups;
  /// DaemonSet pods will be gracefully terminated from empty nodes. If set to true, all daemonset pods on empty nodes will be evicted before deletion of the node. If the daemonset pod cannot be evicted another node will be chosen for scaling. If set to false, the node will be deleted without ensuring that daemonset pods are deleted or evicted.
  final pulumi.Input<bool?>? daemonsetEvictionForEmptyNodes;
  /// DaemonSet pods will be gracefully terminated from non-empty nodes. If set to true, all daemonset pods on occupied nodes will be evicted before deletion of the node. If the daemonset pod cannot be evicted another node will be chosen for scaling. If set to false, the node will be deleted without ensuring that daemonset pods are deleted or evicted.
  final pulumi.Input<bool?>? daemonsetEvictionForOccupiedNodes;
  /// The expander to use when scaling up. If not specified, the default is 'random'. See [expanders](https://github.com/kubernetes/autoscaler/blob/master/cluster-autoscaler/FAQ.md#what-are-expanders) for more information.
  final pulumi.Input<dynamic>? expander;
  /// Should CA ignore DaemonSet pods when calculating resource utilization for scaling down. If set to true, the resources used by daemonset will be taken into account when making scaling down decisions.
  final pulumi.Input<bool?>? ignoreDaemonsetsUtilization;
  /// The maximum number of empty nodes that can be deleted at the same time. This must be a positive integer. The default is 10.
  final pulumi.Input<String?>? maxEmptyBulkDelete;
  /// The maximum number of seconds the cluster autoscaler waits for pod termination when trying to scale down a node. The default is 600.
  final pulumi.Input<String?>? maxGracefulTerminationSec;
  /// The maximum time the autoscaler waits for a node to be provisioned. The default is '15m'. Values must be an integer followed by an 'm'. No unit of time other than minutes (m) is supported.
  final pulumi.Input<String?>? maxNodeProvisionTime;
  /// The maximum percentage of unready nodes in the cluster. After this percentage is exceeded, cluster autoscaler halts operations. The default is 45. The maximum is 100 and the minimum is 0.
  final pulumi.Input<String?>? maxTotalUnreadyPercentage;
  /// Ignore unscheduled pods before they're a certain age. For scenarios like burst/batch scale where you don't want CA to act before the kubernetes scheduler could schedule all the pods, you can tell CA to ignore unscheduled pods before they're a certain age. The default is '0s'. Values must be an integer followed by a unit ('s' for seconds, 'm' for minutes, 'h' for hours, etc).
  final pulumi.Input<String?>? newPodScaleUpDelay;
  /// The number of allowed unready nodes, irrespective of max-total-unready-percentage. This must be an integer. The default is 3.
  final pulumi.Input<String?>? okTotalUnreadyCount;
  /// How long after scale up that scale down evaluation resumes. The default is '10m'. Values must be an integer followed by an 'm'. No unit of time other than minutes (m) is supported.
  final pulumi.Input<String?>? scaleDownDelayAfterAdd;
  /// How long after node deletion that scale down evaluation resumes. The default is the scan-interval. Values must be an integer followed by an 'm'. No unit of time other than minutes (m) is supported.
  final pulumi.Input<String?>? scaleDownDelayAfterDelete;
  /// How long after scale down failure that scale down evaluation resumes. The default is '3m'. Values must be an integer followed by an 'm'. No unit of time other than minutes (m) is supported.
  final pulumi.Input<String?>? scaleDownDelayAfterFailure;
  /// How long a node should be unneeded before it is eligible for scale down. The default is '10m'. Values must be an integer followed by an 'm'. No unit of time other than minutes (m) is supported.
  final pulumi.Input<String?>? scaleDownUnneededTime;
  /// How long an unready node should be unneeded before it is eligible for scale down. The default is '20m'. Values must be an integer followed by an 'm'. No unit of time other than minutes (m) is supported.
  final pulumi.Input<String?>? scaleDownUnreadyTime;
  /// Node utilization level, defined as sum of requested resources divided by capacity, below which a node can be considered for scale down. The default is '0.5'.
  final pulumi.Input<String?>? scaleDownUtilizationThreshold;
  /// How often cluster is reevaluated for scale up or down. The default is '10'. Values must be an integer number of seconds.
  final pulumi.Input<String?>? scanInterval;
  /// If cluster autoscaler will skip deleting nodes with pods with local storage, for example, EmptyDir or HostPath. The default is true.
  final pulumi.Input<String?>? skipNodesWithLocalStorage;
  /// If cluster autoscaler will skip deleting nodes with pods from kube-system (except for DaemonSet or mirror pods). The default is true.
  final pulumi.Input<String?>? skipNodesWithSystemPods;

  /// Creates a new [ManagedClusterPropertiesAutoScalerProfile].
  /// [balanceSimilarNodeGroups] Detects similar node pools and balances the number of nodes between them. Valid values are 'true' and 'false'
  /// [daemonsetEvictionForEmptyNodes] DaemonSet pods will be gracefully terminated from empty nodes. If set to true, all daemonset pods on empty nodes will be evicted before deletion of the node. If the daemonset pod cannot be evicted another node will be chosen for scaling. If set to false, the node will be deleted without ensuring that daemonset pods are deleted or evicted.
  /// [daemonsetEvictionForOccupiedNodes] DaemonSet pods will be gracefully terminated from non-empty nodes. If set to true, all daemonset pods on occupied nodes will be evicted before deletion of the node. If the daemonset pod cannot be evicted another node will be chosen for scaling. If set to false, the node will be deleted without ensuring that daemonset pods are deleted or evicted.
  /// [expander] The expander to use when scaling up. If not specified, the default is 'random'. See [expanders](https://github.com/kubernetes/autoscaler/blob/master/cluster-autoscaler/FAQ.md#what-are-expanders) for more information.
  /// [ignoreDaemonsetsUtilization] Should CA ignore DaemonSet pods when calculating resource utilization for scaling down. If set to true, the resources used by daemonset will be taken into account when making scaling down decisions.
  /// [maxEmptyBulkDelete] The maximum number of empty nodes that can be deleted at the same time. This must be a positive integer. The default is 10.
  /// [maxGracefulTerminationSec] The maximum number of seconds the cluster autoscaler waits for pod termination when trying to scale down a node. The default is 600.
  /// [maxNodeProvisionTime] The maximum time the autoscaler waits for a node to be provisioned. The default is '15m'. Values must be an integer followed by an 'm'. No unit of time other than minutes (m) is supported.
  /// [maxTotalUnreadyPercentage] The maximum percentage of unready nodes in the cluster. After this percentage is exceeded, cluster autoscaler halts operations. The default is 45. The maximum is 100 and the minimum is 0.
  /// [newPodScaleUpDelay] Ignore unscheduled pods before they're a certain age. For scenarios like burst/batch scale where you don't want CA to act before the kubernetes scheduler could schedule all the pods, you can tell CA to ignore unscheduled pods before they're a certain age. The default is '0s'. Values must be an integer followed by a unit ('s' for seconds, 'm' for minutes, 'h' for hours, etc).
  /// [okTotalUnreadyCount] The number of allowed unready nodes, irrespective of max-total-unready-percentage. This must be an integer. The default is 3.
  /// [scaleDownDelayAfterAdd] How long after scale up that scale down evaluation resumes. The default is '10m'. Values must be an integer followed by an 'm'. No unit of time other than minutes (m) is supported.
  /// [scaleDownDelayAfterDelete] How long after node deletion that scale down evaluation resumes. The default is the scan-interval. Values must be an integer followed by an 'm'. No unit of time other than minutes (m) is supported.
  /// [scaleDownDelayAfterFailure] How long after scale down failure that scale down evaluation resumes. The default is '3m'. Values must be an integer followed by an 'm'. No unit of time other than minutes (m) is supported.
  /// [scaleDownUnneededTime] How long a node should be unneeded before it is eligible for scale down. The default is '10m'. Values must be an integer followed by an 'm'. No unit of time other than minutes (m) is supported.
  /// [scaleDownUnreadyTime] How long an unready node should be unneeded before it is eligible for scale down. The default is '20m'. Values must be an integer followed by an 'm'. No unit of time other than minutes (m) is supported.
  /// [scaleDownUtilizationThreshold] Node utilization level, defined as sum of requested resources divided by capacity, below which a node can be considered for scale down. The default is '0.5'.
  /// [scanInterval] How often cluster is reevaluated for scale up or down. The default is '10'. Values must be an integer number of seconds.
  /// [skipNodesWithLocalStorage] If cluster autoscaler will skip deleting nodes with pods with local storage, for example, EmptyDir or HostPath. The default is true.
  /// [skipNodesWithSystemPods] If cluster autoscaler will skip deleting nodes with pods from kube-system (except for DaemonSet or mirror pods). The default is true.
  const ManagedClusterPropertiesAutoScalerProfile({
    this.balanceSimilarNodeGroups,
    this.daemonsetEvictionForEmptyNodes,
    this.daemonsetEvictionForOccupiedNodes,
    this.expander,
    this.ignoreDaemonsetsUtilization,
    this.maxEmptyBulkDelete,
    this.maxGracefulTerminationSec,
    this.maxNodeProvisionTime,
    this.maxTotalUnreadyPercentage,
    this.newPodScaleUpDelay,
    this.okTotalUnreadyCount,
    this.scaleDownDelayAfterAdd,
    this.scaleDownDelayAfterDelete,
    this.scaleDownDelayAfterFailure,
    this.scaleDownUnneededTime,
    this.scaleDownUnreadyTime,
    this.scaleDownUtilizationThreshold,
    this.scanInterval,
    this.skipNodesWithLocalStorage,
    this.skipNodesWithSystemPods,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'balanceSimilarNodeGroups': ?balanceSimilarNodeGroups,
      'daemonsetEvictionForEmptyNodes': ?daemonsetEvictionForEmptyNodes,
      'daemonsetEvictionForOccupiedNodes': ?daemonsetEvictionForOccupiedNodes,
      'expander': ?expander,
      'ignoreDaemonsetsUtilization': ?ignoreDaemonsetsUtilization,
      'maxEmptyBulkDelete': ?maxEmptyBulkDelete,
      'maxGracefulTerminationSec': ?maxGracefulTerminationSec,
      'maxNodeProvisionTime': ?maxNodeProvisionTime,
      'maxTotalUnreadyPercentage': ?maxTotalUnreadyPercentage,
      'newPodScaleUpDelay': ?newPodScaleUpDelay,
      'okTotalUnreadyCount': ?okTotalUnreadyCount,
      'scaleDownDelayAfterAdd': ?scaleDownDelayAfterAdd,
      'scaleDownDelayAfterDelete': ?scaleDownDelayAfterDelete,
      'scaleDownDelayAfterFailure': ?scaleDownDelayAfterFailure,
      'scaleDownUnneededTime': ?scaleDownUnneededTime,
      'scaleDownUnreadyTime': ?scaleDownUnreadyTime,
      'scaleDownUtilizationThreshold': ?scaleDownUtilizationThreshold,
      'scanInterval': ?scanInterval,
      'skipNodesWithLocalStorage': ?skipNodesWithLocalStorage,
      'skipNodesWithSystemPods': ?skipNodesWithSystemPods,
    };
  }

  factory ManagedClusterPropertiesAutoScalerProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterPropertiesAutoScalerProfile(
      balanceSimilarNodeGroups: (() { final guardedValue = map['balanceSimilarNodeGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      daemonsetEvictionForEmptyNodes: (() { final guardedValue = map['daemonsetEvictionForEmptyNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      daemonsetEvictionForOccupiedNodes: (() { final guardedValue = map['daemonsetEvictionForOccupiedNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expander: (() { final guardedValue = map['expander']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      ignoreDaemonsetsUtilization: (() { final guardedValue = map['ignoreDaemonsetsUtilization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxEmptyBulkDelete: (() { final guardedValue = map['maxEmptyBulkDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxGracefulTerminationSec: (() { final guardedValue = map['maxGracefulTerminationSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxNodeProvisionTime: (() { final guardedValue = map['maxNodeProvisionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxTotalUnreadyPercentage: (() { final guardedValue = map['maxTotalUnreadyPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      newPodScaleUpDelay: (() { final guardedValue = map['newPodScaleUpDelay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      okTotalUnreadyCount: (() { final guardedValue = map['okTotalUnreadyCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleDownDelayAfterAdd: (() { final guardedValue = map['scaleDownDelayAfterAdd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleDownDelayAfterDelete: (() { final guardedValue = map['scaleDownDelayAfterDelete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleDownDelayAfterFailure: (() { final guardedValue = map['scaleDownDelayAfterFailure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleDownUnneededTime: (() { final guardedValue = map['scaleDownUnneededTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleDownUnreadyTime: (() { final guardedValue = map['scaleDownUnreadyTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scaleDownUtilizationThreshold: (() { final guardedValue = map['scaleDownUtilizationThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanInterval: (() { final guardedValue = map['scanInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipNodesWithLocalStorage: (() { final guardedValue = map['skipNodesWithLocalStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipNodesWithSystemPods: (() { final guardedValue = map['skipNodesWithSystemPods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

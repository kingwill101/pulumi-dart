// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterNodePoolUpgradeSettings {
  /// The amount of time in minutes to wait on eviction of pods and graceful termination per node. This eviction wait time honors waiting on pod disruption budgets. If this time is exceeded, the upgrade fails. Unsetting this after configuring it will force a new resource to be created.
  final int? drainTimeoutInMinutes;
  /// The maximum number or percentage of nodes which will be added to the Node Pool size during an upgrade.
  final String? maxSurge;
  /// The maximum number or percentage of nodes which can be unavailable during the upgrade.
  ///
  /// > **Note:** Exactly one of `max_surge` or `max_unavailable` must be specified.
  final String? maxUnavailable;
  /// The amount of time in minutes to wait after draining a node and before reimaging and moving on to next node.
  final int? nodeSoakDurationInMinutes;
  /// Specifies the action when a node is undrainable during upgrade. Possible values are `Cordon` and `Schedule`. Unsetting this after configuring it will force a new resource to be created.
  final String? undrainableNodeBehavior;

  /// Creates a new [KubernetesClusterNodePoolUpgradeSettings].
  /// [drainTimeoutInMinutes] The amount of time in minutes to wait on eviction of pods and graceful termination per node. This eviction wait time honors waiting on pod disruption budgets. If this time is exceeded, the upgrade fails. Unsetting this after configuring it will force a new resource to be created.
  /// [maxSurge] The maximum number or percentage of nodes which will be added to the Node Pool size during an upgrade.
  /// [maxUnavailable] The maximum number or percentage of nodes which can be unavailable during the upgrade.
  /// [nodeSoakDurationInMinutes] The amount of time in minutes to wait after draining a node and before reimaging and moving on to next node.
  /// [undrainableNodeBehavior] Specifies the action when a node is undrainable during upgrade. Possible values are `Cordon` and `Schedule`. Unsetting this after configuring it will force a new resource to be created.
  KubernetesClusterNodePoolUpgradeSettings({
    this.drainTimeoutInMinutes,
    this.maxSurge,
    this.maxUnavailable,
    this.nodeSoakDurationInMinutes,
    this.undrainableNodeBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drainTimeoutInMinutes': ?drainTimeoutInMinutes,
      'maxSurge': ?maxSurge,
      'maxUnavailable': ?maxUnavailable,
      'nodeSoakDurationInMinutes': ?nodeSoakDurationInMinutes,
      'undrainableNodeBehavior': ?undrainableNodeBehavior,
    };
  }

  factory KubernetesClusterNodePoolUpgradeSettings.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterNodePoolUpgradeSettings(
      drainTimeoutInMinutes: map['drainTimeoutInMinutes'] == null ? null : map['drainTimeoutInMinutes'] as int,
      maxSurge: map['maxSurge'] == null ? null : map['maxSurge'] as String,
      maxUnavailable: map['maxUnavailable'] == null ? null : map['maxUnavailable'] as String,
      nodeSoakDurationInMinutes: map['nodeSoakDurationInMinutes'] == null ? null : map['nodeSoakDurationInMinutes'] as int,
      undrainableNodeBehavior: map['undrainableNodeBehavior'] == null ? null : map['undrainableNodeBehavior'] as String,
    );
  }
}


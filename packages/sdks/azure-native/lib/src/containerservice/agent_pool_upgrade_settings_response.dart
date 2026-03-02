// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for upgrading an agentpool
class AgentPoolUpgradeSettingsResponse {
  /// The drain timeout for a node. The amount of time (in minutes) to wait on eviction of pods and graceful termination per node. This eviction wait time honors waiting on pod disruption budgets. If this time is exceeded, the upgrade fails. If not specified, the default is 30 minutes.
  final pulumi.Input<int>? drainTimeoutInMinutes;
  /// The maximum number or percentage of nodes that are surged during upgrade. This can either be set to an integer (e.g. '5') or a percentage (e.g. '50%'). If a percentage is specified, it is the percentage of the total agent pool size at the time of the upgrade. For percentages, fractional nodes are rounded up. If not specified, the default is 10%. For more information, including best practices, see: https://learn.microsoft.com/en-us/azure/aks/upgrade-cluster
  final pulumi.Input<String>? maxSurge;
  /// The maximum number or percentage of nodes that can be simultaneously unavailable during upgrade. This can either be set to an integer (e.g. '1') or a percentage (e.g. '5%'). If a percentage is specified, it is the percentage of the total agent pool size at the time of the upgrade. For percentages, fractional nodes are rounded up. If not specified, the default is 0. For more information, including best practices, see: https://learn.microsoft.com/en-us/azure/aks/upgrade-cluster
  final pulumi.Input<String>? maxUnavailable;
  /// The soak duration for a node. The amount of time (in minutes) to wait after draining a node and before reimaging it and moving on to next node. If not specified, the default is 0 minutes.
  final pulumi.Input<int>? nodeSoakDurationInMinutes;
  /// Defines the behavior for undrainable nodes during upgrade. The most common cause of undrainable nodes is Pod Disruption Budgets (PDBs), but other issues, such as pod termination grace period is exceeding the remaining per-node drain timeout or pod is still being in a running state, can also cause undrainable nodes.
  final pulumi.Input<String>? undrainableNodeBehavior;

  /// Creates a new [AgentPoolUpgradeSettingsResponse].
  /// [drainTimeoutInMinutes] The drain timeout for a node. The amount of time (in minutes) to wait on eviction of pods and graceful termination per node. This eviction wait time honors waiting on pod disruption budgets. If this time is exceeded, the upgrade fails. If not specified, the default is 30 minutes.
  /// [maxSurge] The maximum number or percentage of nodes that are surged during upgrade. This can either be set to an integer (e.g. '5') or a percentage (e.g. '50%'). If a percentage is specified, it is the percentage of the total agent pool size at the time of the upgrade. For percentages, fractional nodes are rounded up. If not specified, the default is 10%. For more information, including best practices, see: https://learn.microsoft.com/en-us/azure/aks/upgrade-cluster
  /// [maxUnavailable] The maximum number or percentage of nodes that can be simultaneously unavailable during upgrade. This can either be set to an integer (e.g. '1') or a percentage (e.g. '5%'). If a percentage is specified, it is the percentage of the total agent pool size at the time of the upgrade. For percentages, fractional nodes are rounded up. If not specified, the default is 0. For more information, including best practices, see: https://learn.microsoft.com/en-us/azure/aks/upgrade-cluster
  /// [nodeSoakDurationInMinutes] The soak duration for a node. The amount of time (in minutes) to wait after draining a node and before reimaging it and moving on to next node. If not specified, the default is 0 minutes.
  /// [undrainableNodeBehavior] Defines the behavior for undrainable nodes during upgrade. The most common cause of undrainable nodes is Pod Disruption Budgets (PDBs), but other issues, such as pod termination grace period is exceeding the remaining per-node drain timeout or pod is still being in a running state, can also cause undrainable nodes.
  AgentPoolUpgradeSettingsResponse({
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

  factory AgentPoolUpgradeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AgentPoolUpgradeSettingsResponse(
      drainTimeoutInMinutes: map['drainTimeoutInMinutes'] == null ? null : (map['drainTimeoutInMinutes'] as int).input(),
      maxSurge: map['maxSurge'] == null ? null : (map['maxSurge'] as String).input(),
      maxUnavailable: map['maxUnavailable'] == null ? null : (map['maxUnavailable'] as String).input(),
      nodeSoakDurationInMinutes: map['nodeSoakDurationInMinutes'] == null ? null : (map['nodeSoakDurationInMinutes'] as int).input(),
      undrainableNodeBehavior: map['undrainableNodeBehavior'] == null ? null : (map['undrainableNodeBehavior'] as String).input(),
    );
  }
}


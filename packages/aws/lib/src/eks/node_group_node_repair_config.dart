// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_node_repair_config_node_repair_config_override.dart';

class NodeGroupNodeRepairConfig {
  /// Specifies whether to enable node auto repair for the node group. Node auto repair is disabled by default. Defaults to `false`.
  final bool? enabled;

  /// Maximum number of nodes that can be repaired concurrently or in parallel, expressed as a count of unhealthy nodes. Conflicts with `max_parallel_nodes_repaired_percentage`.
  final int? maxParallelNodesRepairedCount;

  /// Maximum number of nodes that can be repaired concurrently or in parallel, expressed as a percentage of unhealthy nodes. Conflicts with `max_parallel_nodes_repaired_count`.
  final int? maxParallelNodesRepairedPercentage;

  /// Count threshold of unhealthy nodes, above which node auto repair actions will stop. Conflicts with `max_unhealthy_node_threshold_percentage`.
  final int? maxUnhealthyNodeThresholdCount;

  /// Percentage threshold of unhealthy nodes, above which node auto repair actions will stop. Conflicts with `max_unhealthy_node_threshold_count`.
  final int? maxUnhealthyNodeThresholdPercentage;

  /// Granular overrides for specific repair actions. See `node_repair_config_overrides` below for details.
  final List<NodeGroupNodeRepairConfigNodeRepairConfigOverride>?
      nodeRepairConfigOverrides;

  /// Creates a new [NodeGroupNodeRepairConfig].
  /// [enabled] Specifies whether to enable node auto repair for the node group. Node auto repair is disabled by default. Defaults to `false`.
  /// [maxParallelNodesRepairedCount] Maximum number of nodes that can be repaired concurrently or in parallel, expressed as a count of unhealthy nodes. Conflicts with `max_parallel_nodes_repaired_percentage`.
  /// [maxParallelNodesRepairedPercentage] Maximum number of nodes that can be repaired concurrently or in parallel, expressed as a percentage of unhealthy nodes. Conflicts with `max_parallel_nodes_repaired_count`.
  /// [maxUnhealthyNodeThresholdCount] Count threshold of unhealthy nodes, above which node auto repair actions will stop. Conflicts with `max_unhealthy_node_threshold_percentage`.
  /// [maxUnhealthyNodeThresholdPercentage] Percentage threshold of unhealthy nodes, above which node auto repair actions will stop. Conflicts with `max_unhealthy_node_threshold_count`.
  /// [nodeRepairConfigOverrides] Granular overrides for specific repair actions. See `node_repair_config_overrides` below for details.
  NodeGroupNodeRepairConfig({
    this.enabled,
    this.maxParallelNodesRepairedCount,
    this.maxParallelNodesRepairedPercentage,
    this.maxUnhealthyNodeThresholdCount,
    this.maxUnhealthyNodeThresholdPercentage,
    this.nodeRepairConfigOverrides,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final maxParallelNodesRepairedCountValue = maxParallelNodesRepairedCount;
    if (maxParallelNodesRepairedCountValue != null) {
      map['maxParallelNodesRepairedCount'] = maxParallelNodesRepairedCountValue;
    }
    final maxParallelNodesRepairedPercentageValue =
        maxParallelNodesRepairedPercentage;
    if (maxParallelNodesRepairedPercentageValue != null) {
      map['maxParallelNodesRepairedPercentage'] =
          maxParallelNodesRepairedPercentageValue;
    }
    final maxUnhealthyNodeThresholdCountValue = maxUnhealthyNodeThresholdCount;
    if (maxUnhealthyNodeThresholdCountValue != null) {
      map['maxUnhealthyNodeThresholdCount'] =
          maxUnhealthyNodeThresholdCountValue;
    }
    final maxUnhealthyNodeThresholdPercentageValue =
        maxUnhealthyNodeThresholdPercentage;
    if (maxUnhealthyNodeThresholdPercentageValue != null) {
      map['maxUnhealthyNodeThresholdPercentage'] =
          maxUnhealthyNodeThresholdPercentageValue;
    }
    final nodeRepairConfigOverridesValue = nodeRepairConfigOverrides;
    if (nodeRepairConfigOverridesValue != null) {
      map['nodeRepairConfigOverrides'] = pulumi.Input.encodeList<
              NodeGroupNodeRepairConfigNodeRepairConfigOverride,
              Map<String, dynamic>>(
          nodeRepairConfigOverridesValue, (value) => value.toMap());
    }
    return map;
  }

  factory NodeGroupNodeRepairConfig.fromMap(Map<String, dynamic> map) {
    return NodeGroupNodeRepairConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      maxParallelNodesRepairedCount:
          map['maxParallelNodesRepairedCount'] == null
              ? null
              : map['maxParallelNodesRepairedCount'] as int,
      maxParallelNodesRepairedPercentage:
          map['maxParallelNodesRepairedPercentage'] == null
              ? null
              : map['maxParallelNodesRepairedPercentage'] as int,
      maxUnhealthyNodeThresholdCount:
          map['maxUnhealthyNodeThresholdCount'] == null
              ? null
              : map['maxUnhealthyNodeThresholdCount'] as int,
      maxUnhealthyNodeThresholdPercentage:
          map['maxUnhealthyNodeThresholdPercentage'] == null
              ? null
              : map['maxUnhealthyNodeThresholdPercentage'] as int,
      nodeRepairConfigOverrides: map['nodeRepairConfigOverrides'] == null
          ? null
          : pulumi.Input.decodeList<
                  NodeGroupNodeRepairConfigNodeRepairConfigOverride>(
              map['nodeRepairConfigOverrides'],
              (value) =>
                  NodeGroupNodeRepairConfigNodeRepairConfigOverride.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_node_repair_config_node_repair_config_override.dart';

class NodeGroupNodeRepairConfig {
  /// Specifies whether to enable node auto repair for the node group. Node auto repair is disabled by default. Defaults to `false`.
  final pulumi.Input<bool>? enabled;

  /// Maximum number of nodes that can be repaired concurrently or in parallel, expressed as a count of unhealthy nodes. Conflicts with `max_parallel_nodes_repaired_percentage`.
  final pulumi.Input<int>? maxParallelNodesRepairedCount;

  /// Maximum number of nodes that can be repaired concurrently or in parallel, expressed as a percentage of unhealthy nodes. Conflicts with `max_parallel_nodes_repaired_count`.
  final pulumi.Input<int>? maxParallelNodesRepairedPercentage;

  /// Count threshold of unhealthy nodes, above which node auto repair actions will stop. Conflicts with `max_unhealthy_node_threshold_percentage`.
  final pulumi.Input<int>? maxUnhealthyNodeThresholdCount;

  /// Percentage threshold of unhealthy nodes, above which node auto repair actions will stop. Conflicts with `max_unhealthy_node_threshold_count`.
  final pulumi.Input<int>? maxUnhealthyNodeThresholdPercentage;

  /// Granular overrides for specific repair actions. See `node_repair_config_overrides` below for details.
  final pulumi.Input<List<NodeGroupNodeRepairConfigNodeRepairConfigOverride>>?
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
    return <String, dynamic>{
      'enabled': ?enabled,
      'maxParallelNodesRepairedCount': ?maxParallelNodesRepairedCount,
      'maxParallelNodesRepairedPercentage': ?maxParallelNodesRepairedPercentage,
      'maxUnhealthyNodeThresholdCount': ?maxUnhealthyNodeThresholdCount,
      'maxUnhealthyNodeThresholdPercentage':
          ?maxUnhealthyNodeThresholdPercentage,
      'nodeRepairConfigOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<NodeGroupNodeRepairConfigNodeRepairConfigOverride>,
            List<Map<String, dynamic>>
          >(
            nodeRepairConfigOverrides,
            (value) =>
                pulumi.Input.encodeList<
                  NodeGroupNodeRepairConfigNodeRepairConfigOverride,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NodeGroupNodeRepairConfig.fromMap(Map<String, dynamic> map) {
    return NodeGroupNodeRepairConfig(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      maxParallelNodesRepairedCount: (() {
        final guardedValue = map['maxParallelNodesRepairedCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxParallelNodesRepairedPercentage: (() {
        final guardedValue = map['maxParallelNodesRepairedPercentage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxUnhealthyNodeThresholdCount: (() {
        final guardedValue = map['maxUnhealthyNodeThresholdCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxUnhealthyNodeThresholdPercentage: (() {
        final guardedValue = map['maxUnhealthyNodeThresholdPercentage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      nodeRepairConfigOverrides: (() {
        final guardedValue = map['nodeRepairConfigOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            NodeGroupNodeRepairConfigNodeRepairConfigOverride
          >(
            guardedValue,
            (value) =>
                NodeGroupNodeRepairConfigNodeRepairConfigOverride.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}

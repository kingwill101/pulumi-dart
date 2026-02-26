// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../node_group_node_repair_config_node_repair_config_override/node_group_node_repair_config_node_repair_config_override.dart';

class NodeGroupNodeRepairConfig {
  /// Specifies whether to enable node auto repair for the node group. Node auto repair is disabled by default. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? enabled;

  /// Maximum number of nodes that can be repaired concurrently or in parallel, expressed as a count of unhealthy nodes. Conflicts with <span pulumi-lang-nodejs="`maxParallelNodesRepairedPercentage`" pulumi-lang-dotnet="`MaxParallelNodesRepairedPercentage`" pulumi-lang-go="`maxParallelNodesRepairedPercentage`" pulumi-lang-python="`max_parallel_nodes_repaired_percentage`" pulumi-lang-yaml="`maxParallelNodesRepairedPercentage`" pulumi-lang-java="`maxParallelNodesRepairedPercentage`">`max_parallel_nodes_repaired_percentage`</span>.
  final int? maxParallelNodesRepairedCount;

  /// Maximum number of nodes that can be repaired concurrently or in parallel, expressed as a percentage of unhealthy nodes. Conflicts with <span pulumi-lang-nodejs="`maxParallelNodesRepairedCount`" pulumi-lang-dotnet="`MaxParallelNodesRepairedCount`" pulumi-lang-go="`maxParallelNodesRepairedCount`" pulumi-lang-python="`max_parallel_nodes_repaired_count`" pulumi-lang-yaml="`maxParallelNodesRepairedCount`" pulumi-lang-java="`maxParallelNodesRepairedCount`">`max_parallel_nodes_repaired_count`</span>.
  final int? maxParallelNodesRepairedPercentage;

  /// Count threshold of unhealthy nodes, above which node auto repair actions will stop. Conflicts with <span pulumi-lang-nodejs="`maxUnhealthyNodeThresholdPercentage`" pulumi-lang-dotnet="`MaxUnhealthyNodeThresholdPercentage`" pulumi-lang-go="`maxUnhealthyNodeThresholdPercentage`" pulumi-lang-python="`max_unhealthy_node_threshold_percentage`" pulumi-lang-yaml="`maxUnhealthyNodeThresholdPercentage`" pulumi-lang-java="`maxUnhealthyNodeThresholdPercentage`">`max_unhealthy_node_threshold_percentage`</span>.
  final int? maxUnhealthyNodeThresholdCount;

  /// Percentage threshold of unhealthy nodes, above which node auto repair actions will stop. Conflicts with <span pulumi-lang-nodejs="`maxUnhealthyNodeThresholdCount`" pulumi-lang-dotnet="`MaxUnhealthyNodeThresholdCount`" pulumi-lang-go="`maxUnhealthyNodeThresholdCount`" pulumi-lang-python="`max_unhealthy_node_threshold_count`" pulumi-lang-yaml="`maxUnhealthyNodeThresholdCount`" pulumi-lang-java="`maxUnhealthyNodeThresholdCount`">`max_unhealthy_node_threshold_count`</span>.
  final int? maxUnhealthyNodeThresholdPercentage;

  /// Granular overrides for specific repair actions. See <span pulumi-lang-nodejs="`nodeRepairConfigOverrides`" pulumi-lang-dotnet="`NodeRepairConfigOverrides`" pulumi-lang-go="`nodeRepairConfigOverrides`" pulumi-lang-python="`node_repair_config_overrides`" pulumi-lang-yaml="`nodeRepairConfigOverrides`" pulumi-lang-java="`nodeRepairConfigOverrides`">`node_repair_config_overrides`</span> below for details.
  final List<NodeGroupNodeRepairConfigNodeRepairConfigOverride>?
      nodeRepairConfigOverrides;

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
      map['nodeRepairConfigOverrides'] = Input.encodeList<
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
          : Input.decodeList<NodeGroupNodeRepairConfigNodeRepairConfigOverride>(
              map['nodeRepairConfigOverrides'],
              (value) =>
                  NodeGroupNodeRepairConfigNodeRepairConfigOverride.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class InstanceClusterAutoscalingConfig {
  /// The target CPU utilization for autoscaling, in percentage. Must be between 10 and 80.
  final int cpuTarget;

  /// The maximum number of nodes for autoscaling.
  final int maxNodes;

  /// The minimum number of nodes for autoscaling.
  final int minNodes;

  /// The target storage utilization for autoscaling, in GB, for each node in a cluster. This number is limited between 2560 (2.5TiB) and 5120 (5TiB) for a SSD cluster and between 8192 (8TiB) and 16384 (16 TiB) for an HDD cluster. If not set, whatever is already set for the cluster will not change, or if the cluster is just being created, it will use the default value of 2560 for SSD clusters and 8192 for HDD clusters.
  ///
  /// !> **Warning**: Only one of <span pulumi-lang-nodejs="`autoscalingConfig`" pulumi-lang-dotnet="`AutoscalingConfig`" pulumi-lang-go="`autoscalingConfig`" pulumi-lang-python="`autoscaling_config`" pulumi-lang-yaml="`autoscalingConfig`" pulumi-lang-java="`autoscalingConfig`">`autoscaling_config`</span> or <span pulumi-lang-nodejs="`numNodes`" pulumi-lang-dotnet="`NumNodes`" pulumi-lang-go="`numNodes`" pulumi-lang-python="`num_nodes`" pulumi-lang-yaml="`numNodes`" pulumi-lang-java="`numNodes`">`num_nodes`</span> should be set for a cluster. If both are set, <span pulumi-lang-nodejs="`numNodes`" pulumi-lang-dotnet="`NumNodes`" pulumi-lang-go="`numNodes`" pulumi-lang-python="`num_nodes`" pulumi-lang-yaml="`numNodes`" pulumi-lang-java="`numNodes`">`num_nodes`</span> is ignored. If none is set, autoscaling will be disabled and sized to the current node count.
  final int? storageTarget;

  InstanceClusterAutoscalingConfig({
    required this.cpuTarget,
    required this.maxNodes,
    required this.minNodes,
    this.storageTarget,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cpuTarget'] = cpuTarget;
    map['maxNodes'] = maxNodes;
    map['minNodes'] = minNodes;
    final storageTargetValue = storageTarget;
    if (storageTargetValue != null) {
      map['storageTarget'] = storageTargetValue;
    }
    return map;
  }

  factory InstanceClusterAutoscalingConfig.fromMap(Map<String, dynamic> map) {
    return InstanceClusterAutoscalingConfig(
      cpuTarget: map['cpuTarget'] as int,
      maxNodes: map['maxNodes'] as int,
      minNodes: map['minNodes'] as int,
      storageTarget:
          map['storageTarget'] == null ? null : map['storageTarget'] as int,
    );
  }
}

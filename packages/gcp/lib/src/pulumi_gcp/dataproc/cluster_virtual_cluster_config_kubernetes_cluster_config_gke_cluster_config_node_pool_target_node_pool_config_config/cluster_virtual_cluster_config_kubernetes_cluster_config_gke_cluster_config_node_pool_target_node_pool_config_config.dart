// ignore_for_file: unused_element, unnecessary_cast

class ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigConfig {
  /// The number of local SSD disks to attach to the node,
  /// which is limited by the maximum number of disks allowable per zone.
  final int? localSsdCount;

  /// The name of a Compute Engine machine type.
  final String? machineType;

  /// Minimum CPU platform to be used by this instance.
  /// The instance may be scheduled on the specified or a newer CPU platform.
  /// Specify the friendly names of CPU platforms, such as "Intel Haswell" or "Intel Sandy Bridge".
  final String? minCpuPlatform;

  /// Whether the nodes are created as preemptible VM instances.
  /// Preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the
  /// CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role).
  final bool? preemptible;

  /// Spot flag for enabling Spot VM, which is a rebrand of the existing preemptible flag.
  final bool? spot;

  ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigConfig({
    this.localSsdCount,
    this.machineType,
    this.minCpuPlatform,
    this.preemptible,
    this.spot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final localSsdCountValue = localSsdCount;
    if (localSsdCountValue != null) {
      map['localSsdCount'] = localSsdCountValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final minCpuPlatformValue = minCpuPlatform;
    if (minCpuPlatformValue != null) {
      map['minCpuPlatform'] = minCpuPlatformValue;
    }
    final preemptibleValue = preemptible;
    if (preemptibleValue != null) {
      map['preemptible'] = preemptibleValue;
    }
    final spotValue = spot;
    if (spotValue != null) {
      map['spot'] = spotValue;
    }
    return map;
  }

  factory ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterVirtualClusterConfigKubernetesClusterConfigGkeClusterConfigNodePoolTargetNodePoolConfigConfig(
      localSsdCount:
          map['localSsdCount'] == null ? null : map['localSsdCount'] as int,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
      preemptible:
          map['preemptible'] == null ? null : map['preemptible'] as bool,
      spot: map['spot'] == null ? null : map['spot'] as bool,
    );
  }
}

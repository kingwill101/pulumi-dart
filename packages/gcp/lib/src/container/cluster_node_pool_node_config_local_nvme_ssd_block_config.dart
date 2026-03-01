// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig {
  /// Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size. If zero, it means no raw-block local NVMe SSD disks to be attached to the node.
  /// > Note: Local NVMe SSD storage available in GKE versions v1.25.3-gke.1800 and later.
  final int localSsdCount;

  /// Creates a new [ClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig].
  /// [localSsdCount] Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size. If zero, it means no raw-block local NVMe SSD disks to be attached to the node.
  ClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig({
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'localSsdCount': localSsdCount};
  }

  factory ClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig(
      localSsdCount: map['localSsdCount'] as int,
    );
  }
}

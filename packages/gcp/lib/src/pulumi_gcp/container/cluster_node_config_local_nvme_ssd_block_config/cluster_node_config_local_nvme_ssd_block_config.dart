// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigLocalNvmeSsdBlockConfig {
  /// Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size. If zero, it means no raw-block local NVMe SSD disks to be attached to the node.
  /// > Note: Local NVMe SSD storage available in GKE versions v1.25.3-gke.1800 and later.
  final int localSsdCount;

  ClusterNodeConfigLocalNvmeSsdBlockConfig({
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['localSsdCount'] = localSsdCount;
    return map;
  }

  factory ClusterNodeConfigLocalNvmeSsdBlockConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodeConfigLocalNvmeSsdBlockConfig(
      localSsdCount: map['localSsdCount'] as int,
    );
  }
}

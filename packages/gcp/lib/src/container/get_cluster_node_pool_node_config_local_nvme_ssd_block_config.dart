// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig {
  /// Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size.
  final int localSsdCount;

  /// Creates a new [GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig].
  /// [localSsdCount] Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size.
  GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig({
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['localSsdCount'] = localSsdCount;
    return map;
  }

  factory GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigLocalNvmeSsdBlockConfig(
      localSsdCount: map['localSsdCount'] as int,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigEphemeralStorageConfig {
  /// Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD must be 375 or 3000 GB in size, and all local SSDs must share the same size.
  final int localSsdCount;

  GetClusterNodePoolNodeConfigEphemeralStorageConfig({
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['localSsdCount'] = localSsdCount;
    return map;
  }

  factory GetClusterNodePoolNodeConfigEphemeralStorageConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigEphemeralStorageConfig(
      localSsdCount: map['localSsdCount'] as int,
    );
  }
}

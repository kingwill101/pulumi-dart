// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigEphemeralStorageConfig {
  /// Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD must be 375 or 3000 GB in size, and all local SSDs must share the same size.
  final int localSsdCount;

  /// Creates a new [GetClusterNodeConfigEphemeralStorageConfig].
  /// [localSsdCount] Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD must be 375 or 3000 GB in size, and all local SSDs must share the same size.
  GetClusterNodeConfigEphemeralStorageConfig({
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['localSsdCount'] = localSsdCount;
    return map;
  }

  factory GetClusterNodeConfigEphemeralStorageConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigEphemeralStorageConfig(
      localSsdCount: map['localSsdCount'] as int,
    );
  }
}

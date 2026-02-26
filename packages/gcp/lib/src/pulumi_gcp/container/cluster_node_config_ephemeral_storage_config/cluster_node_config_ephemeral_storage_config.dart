// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodeConfigEphemeralStorageConfig {
  /// Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD is 375 GB in size. If zero, it means to disable using local SSDs as ephemeral storage.
  final int localSsdCount;

  ClusterNodeConfigEphemeralStorageConfig({
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['localSsdCount'] = localSsdCount;
    return map;
  }

  factory ClusterNodeConfigEphemeralStorageConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodeConfigEphemeralStorageConfig(
      localSsdCount: map['localSsdCount'] as int,
    );
  }
}

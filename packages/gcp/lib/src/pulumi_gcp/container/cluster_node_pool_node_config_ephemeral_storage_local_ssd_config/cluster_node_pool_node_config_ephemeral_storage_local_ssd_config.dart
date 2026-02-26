// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig {
  /// Number of raw-block local NVMe SSD disks to be attached to the node utilized for GKE Data Cache. If zero, then GKE Data Cache will not be enabled in the nodes.
  final int? dataCacheCount;

  /// Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD is 375 GB in size. If zero, it means to disable using local SSDs as ephemeral storage.
  final int localSsdCount;

  ClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig({
    this.dataCacheCount,
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataCacheCountValue = dataCacheCount;
    if (dataCacheCountValue != null) {
      map['dataCacheCount'] = dataCacheCountValue;
    }
    map['localSsdCount'] = localSsdCount;
    return map;
  }

  factory ClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigEphemeralStorageLocalSsdConfig(
      dataCacheCount:
          map['dataCacheCount'] == null ? null : map['dataCacheCount'] as int,
      localSsdCount: map['localSsdCount'] as int,
    );
  }
}

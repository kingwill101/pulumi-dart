// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigEphemeralStorageLocalSsdConfig {
  /// Number of local SSDs to be utilized for GKE Data Cache. Uses NVMe interfaces.
  final int dataCacheCount;

  /// Number of local SSDs to use to back ephemeral storage. Uses NVMe interfaces. Each local SSD must be 375 or 3000 GB in size, and all local SSDs must share the same size.
  final int localSsdCount;

  GetClusterNodeConfigEphemeralStorageLocalSsdConfig({
    required this.dataCacheCount,
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataCacheCount'] = dataCacheCount;
    map['localSsdCount'] = localSsdCount;
    return map;
  }

  factory GetClusterNodeConfigEphemeralStorageLocalSsdConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigEphemeralStorageLocalSsdConfig(
      dataCacheCount: map['dataCacheCount'] as int,
      localSsdCount: map['localSsdCount'] as int,
    );
  }
}

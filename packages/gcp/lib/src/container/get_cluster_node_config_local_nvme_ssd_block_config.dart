// ignore_for_file: unused_element, unnecessary_cast


class GetClusterNodeConfigLocalNvmeSsdBlockConfig {
  /// Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size.
  final int localSsdCount;

  /// Creates a new [GetClusterNodeConfigLocalNvmeSsdBlockConfig].
  /// [localSsdCount] Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size.
  GetClusterNodeConfigLocalNvmeSsdBlockConfig({
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localSsdCount': localSsdCount,
    };
  }

  factory GetClusterNodeConfigLocalNvmeSsdBlockConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigLocalNvmeSsdBlockConfig(
      localSsdCount: map['localSsdCount'] as int,
    );
  }
}


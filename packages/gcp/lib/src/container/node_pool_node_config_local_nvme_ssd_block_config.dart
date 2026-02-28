// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigLocalNvmeSsdBlockConfig {
  /// Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size.
  final int localSsdCount;

  /// Creates a new [NodePoolNodeConfigLocalNvmeSsdBlockConfig].
  /// [localSsdCount] Number of raw-block local NVMe SSD disks to be attached to the node. Each local SSD is 375 GB in size.
  NodePoolNodeConfigLocalNvmeSsdBlockConfig({
    required this.localSsdCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['localSsdCount'] = localSsdCount;
    return map;
  }

  factory NodePoolNodeConfigLocalNvmeSsdBlockConfig.fromMap(
      Map<String, dynamic> map) {
    return NodePoolNodeConfigLocalNvmeSsdBlockConfig(
      localSsdCount: map['localSsdCount'] as int,
    );
  }
}

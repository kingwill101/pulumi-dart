// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigBootDisk {
  /// Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd
  final String diskType;

  /// Configured IOPs provisioning. Only valid with disk type hyperdisk-balanced.
  final int provisionedIops;

  /// Configured throughput provisioning. Only valid with disk type hyperdisk-balanced.
  final int provisionedThroughput;

  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  final int sizeGb;

  GetClusterNodePoolNodeConfigBootDisk({
    required this.diskType,
    required this.provisionedIops,
    required this.provisionedThroughput,
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskType'] = diskType;
    map['provisionedIops'] = provisionedIops;
    map['provisionedThroughput'] = provisionedThroughput;
    map['sizeGb'] = sizeGb;
    return map;
  }

  factory GetClusterNodePoolNodeConfigBootDisk.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigBootDisk(
      diskType: map['diskType'] as String,
      provisionedIops: map['provisionedIops'] as int,
      provisionedThroughput: map['provisionedThroughput'] as int,
      sizeGb: map['sizeGb'] as int,
    );
  }
}

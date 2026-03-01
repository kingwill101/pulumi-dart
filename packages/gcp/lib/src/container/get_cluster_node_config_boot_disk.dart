// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigBootDisk {
  /// Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd
  final String diskType;

  /// Configured IOPs provisioning. Only valid with disk type hyperdisk-balanced.
  final int provisionedIops;

  /// Configured throughput provisioning. Only valid with disk type hyperdisk-balanced.
  final int provisionedThroughput;

  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  final int sizeGb;

  /// Creates a new [GetClusterNodeConfigBootDisk].
  /// [diskType] Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd
  /// [provisionedIops] Configured IOPs provisioning. Only valid with disk type hyperdisk-balanced.
  /// [provisionedThroughput] Configured throughput provisioning. Only valid with disk type hyperdisk-balanced.
  /// [sizeGb] Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  GetClusterNodeConfigBootDisk({
    required this.diskType,
    required this.provisionedIops,
    required this.provisionedThroughput,
    required this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskType': diskType,
      'provisionedIops': provisionedIops,
      'provisionedThroughput': provisionedThroughput,
      'sizeGb': sizeGb,
    };
  }

  factory GetClusterNodeConfigBootDisk.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigBootDisk(
      diskType: map['diskType'] as String,
      provisionedIops: map['provisionedIops'] as int,
      provisionedThroughput: map['provisionedThroughput'] as int,
      sizeGb: map['sizeGb'] as int,
    );
  }
}

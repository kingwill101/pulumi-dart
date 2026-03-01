// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigBootDisk {
  /// Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd
  final String? diskType;

  /// Configured IOPs provisioning. Only valid with disk type hyperdisk-balanced.
  final int? provisionedIops;

  /// Configured throughput provisioning. Only valid with disk type hyperdisk-balanced.
  final int? provisionedThroughput;

  /// Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  final int? sizeGb;

  /// Creates a new [NodePoolNodeConfigBootDisk].
  /// [diskType] Type of the disk attached to each node. Such as pd-standard, pd-balanced or pd-ssd
  /// [provisionedIops] Configured IOPs provisioning. Only valid with disk type hyperdisk-balanced.
  /// [provisionedThroughput] Configured throughput provisioning. Only valid with disk type hyperdisk-balanced.
  /// [sizeGb] Size of the disk attached to each node, specified in GB. The smallest allowed disk size is 10GB.
  NodePoolNodeConfigBootDisk({
    this.diskType,
    this.provisionedIops,
    this.provisionedThroughput,
    this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskType': ?diskType,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'sizeGb': ?sizeGb,
    };
  }

  factory NodePoolNodeConfigBootDisk.fromMap(Map<String, dynamic> map) {
    return NodePoolNodeConfigBootDisk(
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      provisionedIops: map['provisionedIops'] == null
          ? null
          : map['provisionedIops'] as int,
      provisionedThroughput: map['provisionedThroughput'] == null
          ? null
          : map['provisionedThroughput'] as int,
      sizeGb: map['sizeGb'] == null ? null : map['sizeGb'] as int,
    );
  }
}

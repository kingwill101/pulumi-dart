// ignore_for_file: unused_element, unnecessary_cast


/// Specification for a node group.
class NodeGroupSpecResponse {
  /// The disk storage size for the node group in GB. Example values: 128, 256, 512, 1024.
  final double? diskSizeGB;
  /// Whether high availability is enabled on the node group.
  final bool? enableHa;
  /// The node type deployed in the node group.
  final String? kind;
  /// The number of nodes in the node group.
  final int? nodeCount;
  /// The resource sku for the node group. This defines the size of CPU and memory that is provisioned for each node. Example values: 'M30', 'M40'.
  final String? sku;

  /// Creates a new [NodeGroupSpecResponse].
  /// [diskSizeGB] The disk storage size for the node group in GB. Example values: 128, 256, 512, 1024.
  /// [enableHa] Whether high availability is enabled on the node group.
  /// [kind] The node type deployed in the node group.
  /// [nodeCount] The number of nodes in the node group.
  /// [sku] The resource sku for the node group. This defines the size of CPU and memory that is provisioned for each node. Example values: 'M30', 'M40'.
  NodeGroupSpecResponse({
    this.diskSizeGB,
    this.enableHa,
    this.kind,
    this.nodeCount,
    this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGB': ?diskSizeGB,
      'enableHa': ?enableHa,
      'kind': ?kind,
      'nodeCount': ?nodeCount,
      'sku': ?sku,
    };
  }

  factory NodeGroupSpecResponse.fromMap(Map<String, dynamic> map) {
    return NodeGroupSpecResponse(
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as double,
      enableHa: map['enableHa'] == null ? null : map['enableHa'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      nodeCount: map['nodeCount'] == null ? null : map['nodeCount'] as int,
      sku: map['sku'] == null ? null : map['sku'] as String,
    );
  }
}


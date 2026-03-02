// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification for a node group.
class NodeGroupSpec {
  /// The disk storage size for the node group in GB. Example values: 128, 256, 512, 1024.
  final pulumi.Input<double>? diskSizeGB;
  /// Whether high availability is enabled on the node group.
  final pulumi.Input<bool>? enableHa;
  /// The node type deployed in the node group.
  final pulumi.Input<String>? kind;
  /// The number of nodes in the node group.
  final pulumi.Input<int>? nodeCount;
  /// The resource sku for the node group. This defines the size of CPU and memory that is provisioned for each node. Example values: 'M30', 'M40'.
  final pulumi.Input<String>? sku;

  /// Creates a new [NodeGroupSpec].
  /// [diskSizeGB] The disk storage size for the node group in GB. Example values: 128, 256, 512, 1024.
  /// [enableHa] Whether high availability is enabled on the node group.
  /// [kind] The node type deployed in the node group.
  /// [nodeCount] The number of nodes in the node group.
  /// [sku] The resource sku for the node group. This defines the size of CPU and memory that is provisioned for each node. Example values: 'M30', 'M40'.
  NodeGroupSpec({
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

  factory NodeGroupSpec.fromMap(Map<String, dynamic> map) {
    return NodeGroupSpec(
      diskSizeGB: map['diskSizeGB'] == null ? null : (map['diskSizeGB']! as double).input(),
      enableHa: map['enableHa'] == null ? null : (map['enableHa']! as bool).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      nodeCount: map['nodeCount'] == null ? null : (map['nodeCount']! as int).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification for a node group.
class NodeGroupSpecResponse {
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
      diskSizeGB: (() { final guardedValue = map['diskSizeGB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      enableHa: (() { final guardedValue = map['enableHa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NodePool properties
class NodePoolProperties {
  /// The maximum number of nodes.
  final pulumi.Input<int> maxNodeCount;
  /// The minimum number of nodes.
  final pulumi.Input<int>? minNodeCount;
  /// The Virtual Machine Scale Set priority. If not specified, the default is 'Regular'.
  final pulumi.Input<String>? scaleSetPriority;
  /// The node pool subnet.
  final pulumi.Input<String> subnetId;
  /// The size of the underlying Azure VM.
  final pulumi.Input<String> vmSize;

  /// Creates a new [NodePoolProperties].
  /// [maxNodeCount] The maximum number of nodes.
  /// [minNodeCount] The minimum number of nodes.
  /// [scaleSetPriority] The Virtual Machine Scale Set priority. If not specified, the default is 'Regular'.
  /// [subnetId] The node pool subnet.
  /// [vmSize] The size of the underlying Azure VM.
  const NodePoolProperties({
    required this.maxNodeCount,
    this.minNodeCount,
    this.scaleSetPriority,
    required this.subnetId,
    required this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodeCount': maxNodeCount,
      'minNodeCount': ?minNodeCount,
      'scaleSetPriority': ?scaleSetPriority,
      'subnetId': subnetId,
      'vmSize': vmSize,
    };
  }

  factory NodePoolProperties.fromMap(Map<String, dynamic> map) {
    return NodePoolProperties(
      maxNodeCount: pulumi.Input.fromValue(map['maxNodeCount'] as int),
      minNodeCount: (() { final guardedValue = map['minNodeCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      scaleSetPriority: (() { final guardedValue = map['scaleSetPriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
      vmSize: pulumi.Input.fromValue(map['vmSize'] as String),
    );
  }
}

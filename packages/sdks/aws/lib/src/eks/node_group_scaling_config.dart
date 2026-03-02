// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeGroupScalingConfig {
  /// Desired number of worker nodes.
  final pulumi.Input<int> desiredSize;
  /// Maximum number of worker nodes.
  final pulumi.Input<int> maxSize;
  /// Minimum number of worker nodes.
  final pulumi.Input<int> minSize;

  /// Creates a new [NodeGroupScalingConfig].
  /// [desiredSize] Desired number of worker nodes.
  /// [maxSize] Maximum number of worker nodes.
  /// [minSize] Minimum number of worker nodes.
  NodeGroupScalingConfig({
    required this.desiredSize,
    required this.maxSize,
    required this.minSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'desiredSize': desiredSize,
      'maxSize': maxSize,
      'minSize': minSize,
    };
  }

  factory NodeGroupScalingConfig.fromMap(Map<String, dynamic> map) {
    return NodeGroupScalingConfig(
      desiredSize: (map['desiredSize'] as int).input(),
      maxSize: (map['maxSize'] as int).input(),
      minSize: (map['minSize'] as int).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNodeGroupScalingConfig {
  /// Desired number of worker nodes.
  final pulumi.Input<int> desiredSize;
  /// Maximum number of worker nodes.
  final pulumi.Input<int> maxSize;
  /// Minimum number of worker nodes.
  final pulumi.Input<int> minSize;

  /// Creates a new [GetNodeGroupScalingConfig].
  /// [desiredSize] Desired number of worker nodes.
  /// [maxSize] Maximum number of worker nodes.
  /// [minSize] Minimum number of worker nodes.
  const GetNodeGroupScalingConfig({
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

  factory GetNodeGroupScalingConfig.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupScalingConfig(
      desiredSize: pulumi.Input.fromValue(map['desiredSize'] as int),
      maxSize: pulumi.Input.fromValue(map['maxSize'] as int),
      minSize: pulumi.Input.fromValue(map['minSize'] as int),
    );
  }
}


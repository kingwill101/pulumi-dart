// ignore_for_file: unused_element, unnecessary_cast

class NodeGroupScalingConfig {
  /// Desired number of worker nodes.
  final int desiredSize;

  /// Maximum number of worker nodes.
  final int maxSize;

  /// Minimum number of worker nodes.
  final int minSize;

  NodeGroupScalingConfig({
    required this.desiredSize,
    required this.maxSize,
    required this.minSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['desiredSize'] = desiredSize;
    map['maxSize'] = maxSize;
    map['minSize'] = minSize;
    return map;
  }

  factory NodeGroupScalingConfig.fromMap(Map<String, dynamic> map) {
    return NodeGroupScalingConfig(
      desiredSize: map['desiredSize'] as int,
      maxSize: map['maxSize'] as int,
      minSize: map['minSize'] as int,
    );
  }
}

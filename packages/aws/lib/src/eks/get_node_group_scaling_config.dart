// ignore_for_file: unused_element, unnecessary_cast

class GetNodeGroupScalingConfig {
  /// Desired number of worker nodes.
  final int desiredSize;

  /// Maximum number of worker nodes.
  final int maxSize;

  /// Minimum number of worker nodes.
  final int minSize;

  /// Creates a new [GetNodeGroupScalingConfig].
  /// [desiredSize] Desired number of worker nodes.
  /// [maxSize] Maximum number of worker nodes.
  /// [minSize] Minimum number of worker nodes.
  GetNodeGroupScalingConfig({
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

  factory GetNodeGroupScalingConfig.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupScalingConfig(
      desiredSize: map['desiredSize'] as int,
      maxSize: map['maxSize'] as int,
      minSize: map['minSize'] as int,
    );
  }
}

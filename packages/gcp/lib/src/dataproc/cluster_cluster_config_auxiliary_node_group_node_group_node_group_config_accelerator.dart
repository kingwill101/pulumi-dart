// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator {
  /// The number of the accelerator cards of this type exposed to this instance. Often restricted to one of `1`, `2`, `4`, or `8`.
  ///
  ///
  /// - - -
  final int acceleratorCount;

  /// The short name of the accelerator type to expose to this instance. For example, `nvidia-tesla-k80`.
  final String acceleratorType;

  /// Creates a new [ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator].
  /// [acceleratorCount] The number of the accelerator cards of this type exposed to this instance. Often restricted to one of `1`, `2`, `4`, or `8`.
  /// [acceleratorType] The short name of the accelerator type to expose to this instance. For example, `nvidia-tesla-k80`.
  ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator({
    required this.acceleratorCount,
    required this.acceleratorType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['acceleratorCount'] = acceleratorCount;
    map['acceleratorType'] = acceleratorType;
    return map;
  }

  factory ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator.fromMap(
      Map<String, dynamic> map) {
    return ClusterClusterConfigAuxiliaryNodeGroupNodeGroupNodeGroupConfigAccelerator(
      acceleratorCount: map['acceleratorCount'] as int,
      acceleratorType: map['acceleratorType'] as String,
    );
  }
}

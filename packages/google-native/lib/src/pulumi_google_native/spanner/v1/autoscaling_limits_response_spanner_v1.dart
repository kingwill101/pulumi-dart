// ignore_for_file: unused_element, unnecessary_cast

/// The autoscaling limits for the instance. Users can define the minimum and maximum compute capacity allocated to the instance, and the autoscaler will only scale within that range. Users can either use nodes or processing units to specify the limits, but should use the same unit to set both the min_limit and max_limit.
class AutoscalingLimitsResponseSpannerV1 {
  /// Maximum number of nodes allocated to the instance. If set, this number should be greater than or equal to min_nodes.
  final int maxNodes;

  /// Maximum number of processing units allocated to the instance. If set, this number should be multiples of 1000 and be greater than or equal to min_processing_units.
  final int maxProcessingUnits;

  /// Minimum number of nodes allocated to the instance. If set, this number should be greater than or equal to 1.
  final int minNodes;

  /// Minimum number of processing units allocated to the instance. If set, this number should be multiples of 1000.
  final int minProcessingUnits;

  AutoscalingLimitsResponseSpannerV1({
    required this.maxNodes,
    required this.maxProcessingUnits,
    required this.minNodes,
    required this.minProcessingUnits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxNodes'] = maxNodes;
    map['maxProcessingUnits'] = maxProcessingUnits;
    map['minNodes'] = minNodes;
    map['minProcessingUnits'] = minProcessingUnits;
    return map;
  }

  factory AutoscalingLimitsResponseSpannerV1.fromMap(Map<String, dynamic> map) {
    return AutoscalingLimitsResponseSpannerV1(
      maxNodes: map['maxNodes'] as int,
      maxProcessingUnits: map['maxProcessingUnits'] as int,
      minNodes: map['minNodes'] as int,
      minProcessingUnits: map['minProcessingUnits'] as int,
    );
  }
}

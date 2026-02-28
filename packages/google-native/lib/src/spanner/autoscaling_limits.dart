// ignore_for_file: unused_element, unnecessary_cast

/// The autoscaling limits for the instance. Users can define the minimum and maximum compute capacity allocated to the instance, and the autoscaler will only scale within that range. Users can either use nodes or processing units to specify the limits, but should use the same unit to set both the min_limit and max_limit.
class AutoscalingLimits {
  /// Maximum number of nodes allocated to the instance. If set, this number should be greater than or equal to min_nodes.
  final int? maxNodes;

  /// Maximum number of processing units allocated to the instance. If set, this number should be multiples of 1000 and be greater than or equal to min_processing_units.
  final int? maxProcessingUnits;

  /// Minimum number of nodes allocated to the instance. If set, this number should be greater than or equal to 1.
  final int? minNodes;

  /// Minimum number of processing units allocated to the instance. If set, this number should be multiples of 1000.
  final int? minProcessingUnits;

  /// Creates a new [AutoscalingLimits].
  /// [maxNodes] Maximum number of nodes allocated to the instance. If set, this number should be greater than or equal to min_nodes.
  /// [maxProcessingUnits] Maximum number of processing units allocated to the instance. If set, this number should be multiples of 1000 and be greater than or equal to min_processing_units.
  /// [minNodes] Minimum number of nodes allocated to the instance. If set, this number should be greater than or equal to 1.
  /// [minProcessingUnits] Minimum number of processing units allocated to the instance. If set, this number should be multiples of 1000.
  AutoscalingLimits({
    this.maxNodes,
    this.maxProcessingUnits,
    this.minNodes,
    this.minProcessingUnits,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxNodesValue = maxNodes;
    if (maxNodesValue != null) {
      map['maxNodes'] = maxNodesValue;
    }
    final maxProcessingUnitsValue = maxProcessingUnits;
    if (maxProcessingUnitsValue != null) {
      map['maxProcessingUnits'] = maxProcessingUnitsValue;
    }
    final minNodesValue = minNodes;
    if (minNodesValue != null) {
      map['minNodes'] = minNodesValue;
    }
    final minProcessingUnitsValue = minProcessingUnits;
    if (minProcessingUnitsValue != null) {
      map['minProcessingUnits'] = minProcessingUnitsValue;
    }
    return map;
  }

  factory AutoscalingLimits.fromMap(Map<String, dynamic> map) {
    return AutoscalingLimits(
      maxNodes: map['maxNodes'] == null ? null : map['maxNodes'] as int,
      maxProcessingUnits: map['maxProcessingUnits'] == null
          ? null
          : map['maxProcessingUnits'] as int,
      minNodes: map['minNodes'] == null ? null : map['minNodes'] as int,
      minProcessingUnits: map['minProcessingUnits'] == null
          ? null
          : map['minProcessingUnits'] as int,
    );
  }
}

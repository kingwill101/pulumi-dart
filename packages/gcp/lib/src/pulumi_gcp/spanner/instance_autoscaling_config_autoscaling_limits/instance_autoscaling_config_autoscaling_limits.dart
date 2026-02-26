// ignore_for_file: unused_element, unnecessary_cast

class InstanceAutoscalingConfigAutoscalingLimits {
  /// The maximum number of nodes for this specific replica.
  final int? maxNodes;

  /// Specifies maximum number of processing units allocated to the instance.
  /// If set, this number should be multiples of 1000 and be greater than or equal to
  /// min_processing_units.
  final int? maxProcessingUnits;

  /// The minimum number of nodes for this specific replica.
  final int? minNodes;

  /// Specifies minimum number of processing units allocated to the instance.
  /// If set, this number should be multiples of 1000.
  final int? minProcessingUnits;

  InstanceAutoscalingConfigAutoscalingLimits({
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

  factory InstanceAutoscalingConfigAutoscalingLimits.fromMap(
      Map<String, dynamic> map) {
    return InstanceAutoscalingConfigAutoscalingLimits(
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

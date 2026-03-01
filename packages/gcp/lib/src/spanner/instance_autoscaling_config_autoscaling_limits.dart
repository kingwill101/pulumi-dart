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

  /// Creates a new [InstanceAutoscalingConfigAutoscalingLimits].
  /// [maxNodes] The maximum number of nodes for this specific replica.
  /// [maxProcessingUnits] Specifies maximum number of processing units allocated to the instance.
  /// [minNodes] The minimum number of nodes for this specific replica.
  /// [minProcessingUnits] Specifies minimum number of processing units allocated to the instance.
  InstanceAutoscalingConfigAutoscalingLimits({
    this.maxNodes,
    this.maxProcessingUnits,
    this.minNodes,
    this.minProcessingUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxNodes': ?maxNodes,
      'maxProcessingUnits': ?maxProcessingUnits,
      'minNodes': ?minNodes,
      'minProcessingUnits': ?minProcessingUnits,
    };
  }

  factory InstanceAutoscalingConfigAutoscalingLimits.fromMap(
    Map<String, dynamic> map,
  ) {
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

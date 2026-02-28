// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceAutoscalingConfigAutoscalingLimit {
  /// Specifies maximum number of nodes allocated to the instance. If set, this number
  /// should be greater than or equal to min_nodes.
  final int maxNodes;

  /// Specifies maximum number of processing units allocated to the instance.
  /// If set, this number should be multiples of 1000 and be greater than or equal to
  /// min_processing_units.
  final int maxProcessingUnits;

  /// Specifies number of nodes allocated to the instance. If set, this number
  /// should be greater than or equal to 1.
  final int minNodes;

  /// Specifies minimum number of processing units allocated to the instance.
  /// If set, this number should be multiples of 1000.
  final int minProcessingUnits;

  /// Creates a new [GetInstanceAutoscalingConfigAutoscalingLimit].
  /// [maxNodes] Specifies maximum number of nodes allocated to the instance. If set, this number
  /// [maxProcessingUnits] Specifies maximum number of processing units allocated to the instance.
  /// [minNodes] Specifies number of nodes allocated to the instance. If set, this number
  /// [minProcessingUnits] Specifies minimum number of processing units allocated to the instance.
  GetInstanceAutoscalingConfigAutoscalingLimit({
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

  factory GetInstanceAutoscalingConfigAutoscalingLimit.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceAutoscalingConfigAutoscalingLimit(
      maxNodes: map['maxNodes'] as int,
      maxProcessingUnits: map['maxProcessingUnits'] as int,
      minNodes: map['minNodes'] as int,
      minProcessingUnits: map['minProcessingUnits'] as int,
    );
  }
}

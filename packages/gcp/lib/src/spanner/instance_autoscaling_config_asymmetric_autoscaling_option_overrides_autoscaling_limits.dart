// ignore_for_file: unused_element, unnecessary_cast

class InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits {
  /// The maximum number of nodes for this specific replica.
  final int maxNodes;

  /// The minimum number of nodes for this specific replica.
  final int minNodes;

  /// Creates a new [InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits].
  /// [maxNodes] The maximum number of nodes for this specific replica.
  /// [minNodes] The minimum number of nodes for this specific replica.
  InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits({
    required this.maxNodes,
    required this.minNodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxNodes'] = maxNodes;
    map['minNodes'] = minNodes;
    return map;
  }

  factory InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits.fromMap(
      Map<String, dynamic> map) {
    return InstanceAutoscalingConfigAsymmetricAutoscalingOptionOverridesAutoscalingLimits(
      maxNodes: map['maxNodes'] as int,
      minNodes: map['minNodes'] as int,
    );
  }
}

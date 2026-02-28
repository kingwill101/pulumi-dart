// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit {
  /// The maximum number of nodes for this specific replica.
  final int maxNodes;

  /// The minimum number of nodes for this specific replica.
  final int minNodes;

  /// Creates a new [GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit].
  /// [maxNodes] The maximum number of nodes for this specific replica.
  /// [minNodes] The minimum number of nodes for this specific replica.
  GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit({
    required this.maxNodes,
    required this.minNodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxNodes'] = maxNodes;
    map['minNodes'] = minNodes;
    return map;
  }

  factory GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceAutoscalingConfigAsymmetricAutoscalingOptionOverrideAutoscalingLimit(
      maxNodes: map['maxNodes'] as int,
      minNodes: map['minNodes'] as int,
    );
  }
}

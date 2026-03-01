// ignore_for_file: unused_element, unnecessary_cast

/// Limits for the number of nodes a Cluster can autoscale up/down to.
class AutoscalingLimitsResponse {
  /// Maximum number of nodes to scale up to.
  final int maxServeNodes;

  /// Minimum number of nodes to scale down to.
  final int minServeNodes;

  /// Creates a new [AutoscalingLimitsResponse].
  /// [maxServeNodes] Maximum number of nodes to scale up to.
  /// [minServeNodes] Minimum number of nodes to scale down to.
  AutoscalingLimitsResponse({
    required this.maxServeNodes,
    required this.minServeNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxServeNodes': maxServeNodes,
      'minServeNodes': minServeNodes,
    };
  }

  factory AutoscalingLimitsResponse.fromMap(Map<String, dynamic> map) {
    return AutoscalingLimitsResponse(
      maxServeNodes: map['maxServeNodes'] as int,
      minServeNodes: map['minServeNodes'] as int,
    );
  }
}

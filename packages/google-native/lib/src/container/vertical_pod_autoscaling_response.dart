// ignore_for_file: unused_element, unnecessary_cast

/// VerticalPodAutoscaling contains global, per-cluster information required by Vertical Pod Autoscaler to automatically adjust the resources of pods controlled by it.
class VerticalPodAutoscalingResponse {
  /// Enables vertical pod autoscaling.
  final bool enabled;

  /// Creates a new [VerticalPodAutoscalingResponse].
  /// [enabled] Enables vertical pod autoscaling.
  VerticalPodAutoscalingResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory VerticalPodAutoscalingResponse.fromMap(Map<String, dynamic> map) {
    return VerticalPodAutoscalingResponse(
      enabled: map['enabled'] as bool,
    );
  }
}

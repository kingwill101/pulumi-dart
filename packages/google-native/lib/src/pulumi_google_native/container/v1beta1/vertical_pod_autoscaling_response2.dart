// ignore_for_file: unused_element, unnecessary_cast

/// VerticalPodAutoscaling contains global, per-cluster information required by Vertical Pod Autoscaler to automatically adjust the resources of pods controlled by it.
class VerticalPodAutoscalingResponse2 {
  /// Enables vertical pod autoscaling.
  final bool enabled;

  VerticalPodAutoscalingResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory VerticalPodAutoscalingResponse2.fromMap(Map<String, dynamic> map) {
    return VerticalPodAutoscalingResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}

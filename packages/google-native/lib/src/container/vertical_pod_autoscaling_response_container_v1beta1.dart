// ignore_for_file: unused_element, unnecessary_cast

/// VerticalPodAutoscaling contains global, per-cluster information required by Vertical Pod Autoscaler to automatically adjust the resources of pods controlled by it.
class VerticalPodAutoscalingResponseContainerV1beta1 {
  /// Enables vertical pod autoscaling.
  final bool enabled;

  /// Creates a new [VerticalPodAutoscalingResponseContainerV1beta1].
  /// [enabled] Enables vertical pod autoscaling.
  VerticalPodAutoscalingResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory VerticalPodAutoscalingResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return VerticalPodAutoscalingResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}

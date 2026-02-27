// ignore_for_file: unused_element, unnecessary_cast

/// VerticalPodAutoscaling contains global, per-cluster information required by Vertical Pod Autoscaler to automatically adjust the resources of pods controlled by it.
class VerticalPodAutoscalingContainerV1beta1 {
  /// Enables vertical pod autoscaling.
  final bool? enabled;

  VerticalPodAutoscalingContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory VerticalPodAutoscalingContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return VerticalPodAutoscalingContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

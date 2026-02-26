// ignore_for_file: unused_element, unnecessary_cast

/// VerticalPodAutoscaling contains global, per-cluster information required by Vertical Pod Autoscaler to automatically adjust the resources of pods controlled by it.
class VerticalPodAutoscaling2 {
  /// Enables vertical pod autoscaling.
  final bool? enabled;

  VerticalPodAutoscaling2({
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

  factory VerticalPodAutoscaling2.fromMap(Map<String, dynamic> map) {
    return VerticalPodAutoscaling2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

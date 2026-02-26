// ignore_for_file: unused_element, unnecessary_cast

/// VerticalPodAutoscaling contains global, per-cluster information required by Vertical Pod Autoscaler to automatically adjust the resources of pods controlled by it.
class VerticalPodAutoscaling {
  /// Enables vertical pod autoscaling.
  final bool? enabled;

  VerticalPodAutoscaling({
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

  factory VerticalPodAutoscaling.fromMap(Map<String, dynamic> map) {
    return VerticalPodAutoscaling(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

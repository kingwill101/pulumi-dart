// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
class HorizontalPodAutoscaling {
  /// Whether the Horizontal Pod Autoscaling feature is enabled in the cluster. When enabled, it ensures that metrics are collected into Stackdriver Monitoring.
  final bool? disabled;

  /// Creates a new [HorizontalPodAutoscaling].
  /// [disabled] Whether the Horizontal Pod Autoscaling feature is enabled in the cluster. When enabled, it ensures that metrics are collected into Stackdriver Monitoring.
  HorizontalPodAutoscaling({
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    return map;
  }

  factory HorizontalPodAutoscaling.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscaling(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
    );
  }
}

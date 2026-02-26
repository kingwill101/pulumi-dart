// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
class HorizontalPodAutoscaling2 {
  /// Whether the Horizontal Pod Autoscaling feature is enabled in the cluster. When enabled, it ensures that metrics are collected into Stackdriver Monitoring.
  final bool? disabled;

  HorizontalPodAutoscaling2({
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

  factory HorizontalPodAutoscaling2.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscaling2(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
    );
  }
}

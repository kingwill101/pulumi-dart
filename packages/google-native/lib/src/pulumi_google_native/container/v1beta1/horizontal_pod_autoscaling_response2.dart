// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
class HorizontalPodAutoscalingResponse2 {
  /// Whether the Horizontal Pod Autoscaling feature is enabled in the cluster. When enabled, it ensures that metrics are collected into Stackdriver Monitoring.
  final bool disabled;

  HorizontalPodAutoscalingResponse2({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory HorizontalPodAutoscalingResponse2.fromMap(Map<String, dynamic> map) {
    return HorizontalPodAutoscalingResponse2(
      disabled: map['disabled'] as bool,
    );
  }
}

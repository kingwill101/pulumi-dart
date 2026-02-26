// ignore_for_file: unused_element, unnecessary_cast

class ClusterVerticalPodAutoscaling {
  /// Enables vertical pod autoscaling
  final bool enabled;

  ClusterVerticalPodAutoscaling({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ClusterVerticalPodAutoscaling.fromMap(Map<String, dynamic> map) {
    return ClusterVerticalPodAutoscaling(
      enabled: map['enabled'] as bool,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


class GetClusterVerticalPodAutoscaling {
  /// Enables vertical pod autoscaling.
  final bool enabled;

  /// Creates a new [GetClusterVerticalPodAutoscaling].
  /// [enabled] Enables vertical pod autoscaling.
  GetClusterVerticalPodAutoscaling({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClusterVerticalPodAutoscaling.fromMap(Map<String, dynamic> map) {
    return GetClusterVerticalPodAutoscaling(
      enabled: map['enabled'] as bool,
    );
  }
}


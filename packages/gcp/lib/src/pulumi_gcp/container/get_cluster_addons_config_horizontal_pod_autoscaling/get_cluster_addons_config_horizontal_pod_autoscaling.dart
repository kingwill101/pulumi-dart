// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigHorizontalPodAutoscaling {
  final bool disabled;

  GetClusterAddonsConfigHorizontalPodAutoscaling({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory GetClusterAddonsConfigHorizontalPodAutoscaling.fromMap(
      Map<String, dynamic> map) {
    return GetClusterAddonsConfigHorizontalPodAutoscaling(
      disabled: map['disabled'] as bool,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigHorizontalPodAutoscaling {
  final bool disabled;

  /// Creates a new [GetClusterAddonsConfigHorizontalPodAutoscaling].
  /// [disabled] Required.
  GetClusterAddonsConfigHorizontalPodAutoscaling({required this.disabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'disabled': disabled};
  }

  factory GetClusterAddonsConfigHorizontalPodAutoscaling.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterAddonsConfigHorizontalPodAutoscaling(
      disabled: map['disabled'] as bool,
    );
  }
}

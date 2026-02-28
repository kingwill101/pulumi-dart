// ignore_for_file: unused_element, unnecessary_cast

/// FleetLifecycleState describes the state of a Fleet resource.
class FleetLifecycleStateResponseGkehubV1alpha {
  /// The current state of the Fleet resource.
  final String code;

  /// Creates a new [FleetLifecycleStateResponseGkehubV1alpha].
  /// [code] The current state of the Fleet resource.
  FleetLifecycleStateResponseGkehubV1alpha({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory FleetLifecycleStateResponseGkehubV1alpha.fromMap(
      Map<String, dynamic> map) {
    return FleetLifecycleStateResponseGkehubV1alpha(
      code: map['code'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// FleetLifecycleState describes the state of a Fleet resource.
class FleetLifecycleStateResponseGkehubV1beta {
  /// The current state of the Fleet resource.
  final String code;

  FleetLifecycleStateResponseGkehubV1beta({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory FleetLifecycleStateResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return FleetLifecycleStateResponseGkehubV1beta(
      code: map['code'] as String,
    );
  }
}

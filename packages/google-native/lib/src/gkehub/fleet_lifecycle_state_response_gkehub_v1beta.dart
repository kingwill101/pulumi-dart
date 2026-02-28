// ignore_for_file: unused_element, unnecessary_cast


/// FleetLifecycleState describes the state of a Fleet resource.
class FleetLifecycleStateResponseGkehubV1beta {
  /// The current state of the Fleet resource.
  final String code;

  /// Creates a new [FleetLifecycleStateResponseGkehubV1beta].
  /// [code] The current state of the Fleet resource.
  FleetLifecycleStateResponseGkehubV1beta({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
    };
  }

  factory FleetLifecycleStateResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return FleetLifecycleStateResponseGkehubV1beta(
      code: map['code'] as String,
    );
  }
}


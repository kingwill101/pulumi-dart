// ignore_for_file: unused_element, unnecessary_cast

/// FleetLifecycleState describes the state of a Fleet resource.
class FleetLifecycleStateResponse2 {
  /// The current state of the Fleet resource.
  final String code;

  FleetLifecycleStateResponse2({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory FleetLifecycleStateResponse2.fromMap(Map<String, dynamic> map) {
    return FleetLifecycleStateResponse2(
      code: map['code'] as String,
    );
  }
}

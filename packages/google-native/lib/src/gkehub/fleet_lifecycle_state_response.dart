// ignore_for_file: unused_element, unnecessary_cast

/// FleetLifecycleState describes the state of a Fleet resource.
class FleetLifecycleStateResponse {
  /// The current state of the Fleet resource.
  final String code;

  /// Creates a new [FleetLifecycleStateResponse].
  /// [code] The current state of the Fleet resource.
  FleetLifecycleStateResponse({
    required this.code,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    return map;
  }

  factory FleetLifecycleStateResponse.fromMap(Map<String, dynamic> map) {
    return FleetLifecycleStateResponse(
      code: map['code'] as String,
    );
  }
}

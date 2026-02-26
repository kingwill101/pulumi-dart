// ignore_for_file: unused_element, unnecessary_cast

/// All error details of the fleet observability feature.
class FleetObservabilityFeatureErrorResponse2 {
  /// The code of the error.
  final String code;

  /// A human-readable description of the current status.
  final String description;

  FleetObservabilityFeatureErrorResponse2({
    required this.code,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['description'] = description;
    return map;
  }

  factory FleetObservabilityFeatureErrorResponse2.fromMap(
      Map<String, dynamic> map) {
    return FleetObservabilityFeatureErrorResponse2(
      code: map['code'] as String,
      description: map['description'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// All error details of the fleet observability feature.
class FleetObservabilityFeatureErrorResponseGkehubV1beta {
  /// The code of the error.
  final String code;

  /// A human-readable description of the current status.
  final String description;

  /// Creates a new [FleetObservabilityFeatureErrorResponseGkehubV1beta].
  /// [code] The code of the error.
  /// [description] A human-readable description of the current status.
  FleetObservabilityFeatureErrorResponseGkehubV1beta({
    required this.code,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': code, 'description': description};
  }

  factory FleetObservabilityFeatureErrorResponseGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return FleetObservabilityFeatureErrorResponseGkehubV1beta(
      code: map['code'] as String,
      description: map['description'] as String,
    );
  }
}

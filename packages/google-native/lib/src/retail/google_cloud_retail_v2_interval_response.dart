// ignore_for_file: unused_element, unnecessary_cast


/// A floating point interval.
class GoogleCloudRetailV2IntervalResponse {
  /// Exclusive upper bound.
  final double exclusiveMaximum;
  /// Exclusive lower bound.
  final double exclusiveMinimum;
  /// Inclusive upper bound.
  final double maximum;
  /// Inclusive lower bound.
  final double minimum;

  /// Creates a new [GoogleCloudRetailV2IntervalResponse].
  /// [exclusiveMaximum] Exclusive upper bound.
  /// [exclusiveMinimum] Exclusive lower bound.
  /// [maximum] Inclusive upper bound.
  /// [minimum] Inclusive lower bound.
  GoogleCloudRetailV2IntervalResponse({
    required this.exclusiveMaximum,
    required this.exclusiveMinimum,
    required this.maximum,
    required this.minimum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusiveMaximum': exclusiveMaximum,
      'exclusiveMinimum': exclusiveMinimum,
      'maximum': maximum,
      'minimum': minimum,
    };
  }

  factory GoogleCloudRetailV2IntervalResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2IntervalResponse(
      exclusiveMaximum: map['exclusiveMaximum'] as double,
      exclusiveMinimum: map['exclusiveMinimum'] as double,
      maximum: map['maximum'] as double,
      minimum: map['minimum'] as double,
    );
  }
}


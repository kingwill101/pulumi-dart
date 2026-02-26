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

  GoogleCloudRetailV2IntervalResponse({
    required this.exclusiveMaximum,
    required this.exclusiveMinimum,
    required this.maximum,
    required this.minimum,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exclusiveMaximum'] = exclusiveMaximum;
    map['exclusiveMinimum'] = exclusiveMinimum;
    map['maximum'] = maximum;
    map['minimum'] = minimum;
    return map;
  }

  factory GoogleCloudRetailV2IntervalResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2IntervalResponse(
      exclusiveMaximum: map['exclusiveMaximum'] as double,
      exclusiveMinimum: map['exclusiveMinimum'] as double,
      maximum: map['maximum'] as double,
      minimum: map['minimum'] as double,
    );
  }
}

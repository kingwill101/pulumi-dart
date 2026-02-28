// ignore_for_file: unused_element, unnecessary_cast

/// A floating point interval.
class GoogleCloudRetailV2betaInterval {
  /// Exclusive upper bound.
  final double? exclusiveMaximum;

  /// Exclusive lower bound.
  final double? exclusiveMinimum;

  /// Inclusive upper bound.
  final double? maximum;

  /// Inclusive lower bound.
  final double? minimum;

  /// Creates a new [GoogleCloudRetailV2betaInterval].
  /// [exclusiveMaximum] Exclusive upper bound.
  /// [exclusiveMinimum] Exclusive lower bound.
  /// [maximum] Inclusive upper bound.
  /// [minimum] Inclusive lower bound.
  GoogleCloudRetailV2betaInterval({
    this.exclusiveMaximum,
    this.exclusiveMinimum,
    this.maximum,
    this.minimum,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exclusiveMaximumValue = exclusiveMaximum;
    if (exclusiveMaximumValue != null) {
      map['exclusiveMaximum'] = exclusiveMaximumValue;
    }
    final exclusiveMinimumValue = exclusiveMinimum;
    if (exclusiveMinimumValue != null) {
      map['exclusiveMinimum'] = exclusiveMinimumValue;
    }
    final maximumValue = maximum;
    if (maximumValue != null) {
      map['maximum'] = maximumValue;
    }
    final minimumValue = minimum;
    if (minimumValue != null) {
      map['minimum'] = minimumValue;
    }
    return map;
  }

  factory GoogleCloudRetailV2betaInterval.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaInterval(
      exclusiveMaximum: map['exclusiveMaximum'] == null
          ? null
          : map['exclusiveMaximum'] as double,
      exclusiveMinimum: map['exclusiveMinimum'] == null
          ? null
          : map['exclusiveMinimum'] as double,
      maximum: map['maximum'] == null ? null : map['maximum'] as double,
      minimum: map['minimum'] == null ? null : map['minimum'] as double,
    );
  }
}

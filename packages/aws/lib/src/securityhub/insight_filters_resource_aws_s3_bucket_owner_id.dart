// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersResourceAwsS3BucketOwnerId {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceAwsS3BucketOwnerId].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceAwsS3BucketOwnerId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersResourceAwsS3BucketOwnerId.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceAwsS3BucketOwnerId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}


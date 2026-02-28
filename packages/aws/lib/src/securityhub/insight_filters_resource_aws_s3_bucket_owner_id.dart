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
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersResourceAwsS3BucketOwnerId.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersResourceAwsS3BucketOwnerId(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersResourceAwsS3BucketOwnerName {
  final String comparison;
  final String value;

  /// Creates a new [InsightFiltersResourceAwsS3BucketOwnerName].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceAwsS3BucketOwnerName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['comparison'] = comparison;
    map['value'] = value;
    return map;
  }

  factory InsightFiltersResourceAwsS3BucketOwnerName.fromMap(
      Map<String, dynamic> map) {
    return InsightFiltersResourceAwsS3BucketOwnerName(
      comparison: map['comparison'] as String,
      value: map['value'] as String,
    );
  }
}

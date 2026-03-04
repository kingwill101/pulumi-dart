// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersResourceAwsS3BucketOwnerName {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersResourceAwsS3BucketOwnerName].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceAwsS3BucketOwnerName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersResourceAwsS3BucketOwnerName.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightFiltersResourceAwsS3BucketOwnerName(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

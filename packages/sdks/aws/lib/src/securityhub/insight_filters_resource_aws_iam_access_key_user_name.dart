// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersResourceAwsIamAccessKeyUserName {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersResourceAwsIamAccessKeyUserName].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersResourceAwsIamAccessKeyUserName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersResourceAwsIamAccessKeyUserName.fromMap(Map<String, dynamic> map) {
    return InsightFiltersResourceAwsIamAccessKeyUserName(
      comparison: (map['comparison'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}


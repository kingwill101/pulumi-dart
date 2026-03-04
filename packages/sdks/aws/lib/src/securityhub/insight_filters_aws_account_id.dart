// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersAwsAccountId {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersAwsAccountId].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersAwsAccountId({required this.comparison, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersAwsAccountId.fromMap(Map<String, dynamic> map) {
    return InsightFiltersAwsAccountId(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

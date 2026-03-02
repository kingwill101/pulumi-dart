// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersDescription {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersDescription].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersDescription({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersDescription.fromMap(Map<String, dynamic> map) {
    return InsightFiltersDescription(
      comparison: (map['comparison'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}


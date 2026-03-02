// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersProcessName {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersProcessName].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersProcessName({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersProcessName.fromMap(Map<String, dynamic> map) {
    return InsightFiltersProcessName(
      comparison: (map['comparison'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}


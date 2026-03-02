// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersNetworkSourceDomain {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersNetworkSourceDomain].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersNetworkSourceDomain({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersNetworkSourceDomain.fromMap(Map<String, dynamic> map) {
    return InsightFiltersNetworkSourceDomain(
      comparison: (map['comparison'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}


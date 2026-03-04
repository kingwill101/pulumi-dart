// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersNetworkDestinationDomain {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersNetworkDestinationDomain].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersNetworkDestinationDomain({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'comparison': comparison, 'value': value};
  }

  factory InsightFiltersNetworkDestinationDomain.fromMap(
    Map<String, dynamic> map,
  ) {
    return InsightFiltersNetworkDestinationDomain(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

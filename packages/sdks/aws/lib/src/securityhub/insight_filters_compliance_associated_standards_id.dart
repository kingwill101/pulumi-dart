// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersComplianceAssociatedStandardsId {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersComplianceAssociatedStandardsId].
  /// [comparison] Required.
  /// [value] Required.
  const InsightFiltersComplianceAssociatedStandardsId({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersComplianceAssociatedStandardsId.fromMap(Map<String, dynamic> map) {
    return InsightFiltersComplianceAssociatedStandardsId(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

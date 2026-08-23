// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersThreatIntelIndicatorType {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersThreatIntelIndicatorType].
  /// [comparison] Required.
  /// [value] Required.
  const InsightFiltersThreatIntelIndicatorType({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersThreatIntelIndicatorType.fromMap(Map<String, dynamic> map) {
    return InsightFiltersThreatIntelIndicatorType(
      comparison: pulumi.Input.fromValue(map['comparison'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

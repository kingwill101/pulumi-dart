// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersFindingProviderFieldsSeverityOriginal {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersFindingProviderFieldsSeverityOriginal].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersFindingProviderFieldsSeverityOriginal({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersFindingProviderFieldsSeverityOriginal.fromMap(Map<String, dynamic> map) {
    return InsightFiltersFindingProviderFieldsSeverityOriginal(
      comparison: (map['comparison'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}


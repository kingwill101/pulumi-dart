// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InsightFiltersThreatIntelIndicatorSourceUrl {
  final pulumi.Input<String> comparison;
  final pulumi.Input<String> value;

  /// Creates a new [InsightFiltersThreatIntelIndicatorSourceUrl].
  /// [comparison] Required.
  /// [value] Required.
  InsightFiltersThreatIntelIndicatorSourceUrl({
    required this.comparison,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparison': comparison,
      'value': value,
    };
  }

  factory InsightFiltersThreatIntelIndicatorSourceUrl.fromMap(Map<String, dynamic> map) {
    return InsightFiltersThreatIntelIndicatorSourceUrl(
      comparison: (map['comparison'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}


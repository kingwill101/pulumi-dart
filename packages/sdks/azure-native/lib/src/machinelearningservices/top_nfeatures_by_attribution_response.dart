// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TopNFeaturesByAttributionResponse {
  /// Expected value is 'TopNByAttribution'.
  final pulumi.Input<String> filterType;
  /// The number of top features to include.
  final pulumi.Input<int?>? top;

  /// Creates a new [TopNFeaturesByAttributionResponse].
  /// [filterType] Expected value is 'TopNByAttribution'.
  /// [top] The number of top features to include.
  TopNFeaturesByAttributionResponse({
    required this.filterType,
    pulumi.Input<int?>? top,
  }) : top = top ?? pulumi.Input.fromValue(10);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filterType': filterType,
      'top': ?top,
    };
  }

  factory TopNFeaturesByAttributionResponse.fromMap(Map<String, dynamic> map) {
    return TopNFeaturesByAttributionResponse(
      filterType: pulumi.Input.fromValue(map['filterType'] as String),
      top: (() { final guardedValue = map['top']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

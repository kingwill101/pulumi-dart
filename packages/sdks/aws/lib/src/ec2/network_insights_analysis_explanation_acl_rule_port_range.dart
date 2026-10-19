// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAnalysisExplanationAclRulePortRange {
  final pulumi.Input<int?>? from;
  final pulumi.Input<int?>? to;

  /// Creates a new [NetworkInsightsAnalysisExplanationAclRulePortRange].
  /// [from] Optional.
  /// [to] Optional.
  const NetworkInsightsAnalysisExplanationAclRulePortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'to': ?to,
    };
  }

  factory NetworkInsightsAnalysisExplanationAclRulePortRange.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisExplanationAclRulePortRange(
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

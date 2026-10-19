// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInsightsAnalysisExplanationAclRulePortRange {
  final pulumi.Input<int> from;
  final pulumi.Input<int> to;

  /// Creates a new [GetNetworkInsightsAnalysisExplanationAclRulePortRange].
  /// [from] Required.
  /// [to] Required.
  const GetNetworkInsightsAnalysisExplanationAclRulePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory GetNetworkInsightsAnalysisExplanationAclRulePortRange.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationAclRulePortRange(
      from: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['from'])),
      to: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['to'])),
    );
  }
}

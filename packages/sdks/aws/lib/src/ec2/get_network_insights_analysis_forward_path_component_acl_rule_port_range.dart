// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange {
  final pulumi.Input<int> from;
  final pulumi.Input<int> to;

  /// Creates a new [GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange].
  /// [from] Required.
  /// [to] Required.
  const GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange(
      from: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['from'])),
      to: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['to'])),
    );
  }
}

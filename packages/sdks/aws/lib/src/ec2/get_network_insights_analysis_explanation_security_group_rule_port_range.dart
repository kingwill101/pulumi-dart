// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange {
  final pulumi.Input<int> from;
  final pulumi.Input<int> to;

  /// Creates a new [GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange].
  /// [from] Required.
  /// [to] Required.
  GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': from, 'to': to};
  }

  factory GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange(
      from: pulumi.Input.fromValue(map['from'] as int),
      to: pulumi.Input.fromValue(map['to'] as int),
    );
  }
}

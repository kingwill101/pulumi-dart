// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange {
  final int from;
  final int to;

  /// Creates a new [GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange].
  /// [from] Required.
  /// [to] Required.
  GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['from'] = from;
    map['to'] = to;
    return map;
  }

  factory GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationSecurityGroupRulePortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}

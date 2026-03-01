// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisExplanationAclRulePortRange {
  final int from;
  final int to;

  /// Creates a new [GetNetworkInsightsAnalysisExplanationAclRulePortRange].
  /// [from] Required.
  /// [to] Required.
  GetNetworkInsightsAnalysisExplanationAclRulePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': from, 'to': to};
  }

  factory GetNetworkInsightsAnalysisExplanationAclRulePortRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkInsightsAnalysisExplanationAclRulePortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}

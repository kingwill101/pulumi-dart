// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisExplanationAclRulePortRange {
  final int from;
  final int to;

  GetNetworkInsightsAnalysisExplanationAclRulePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['from'] = from;
    map['to'] = to;
    return map;
  }

  factory GetNetworkInsightsAnalysisExplanationAclRulePortRange.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationAclRulePortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}

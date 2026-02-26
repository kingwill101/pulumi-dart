// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange {
  final int from;
  final int to;

  GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['from'] = from;
    map['to'] = to;
    return map;
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponentAclRulePortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange {
  final int from;
  final int to;

  GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['from'] = from;
    map['to'] = to;
    return map;
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}

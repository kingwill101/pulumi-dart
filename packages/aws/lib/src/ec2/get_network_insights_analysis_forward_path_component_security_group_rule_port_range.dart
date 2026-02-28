// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange {
  final int from;
  final int to;

  /// Creates a new [GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange].
  /// [from] Required.
  /// [to] Required.
  GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['from'] = from;
    map['to'] = to;
    return map;
  }

  factory GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisForwardPathComponentSecurityGroupRulePortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}

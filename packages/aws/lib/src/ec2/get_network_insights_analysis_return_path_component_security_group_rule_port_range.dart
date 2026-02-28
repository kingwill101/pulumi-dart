// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange {
  final int from;
  final int to;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange].
  /// [from] Required.
  /// [to] Required.
  GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': to,
    };
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}


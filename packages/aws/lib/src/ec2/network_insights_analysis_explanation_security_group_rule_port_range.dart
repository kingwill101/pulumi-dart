// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange {
  final int? from;
  final int? to;

  /// Creates a new [NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange].
  /// [from] Optional.
  /// [to] Optional.
  NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': ?from, 'to': ?to};
  }

  factory NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange(
      from: map['from'] == null ? null : map['from'] as int,
      to: map['to'] == null ? null : map['to'] as int,
    );
  }
}

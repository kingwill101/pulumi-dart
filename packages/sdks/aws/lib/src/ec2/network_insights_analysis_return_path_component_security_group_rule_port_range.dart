// ignore_for_file: unused_element, unnecessary_cast


class NetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange {
  final int? from;
  final int? to;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange].
  /// [from] Optional.
  /// [to] Optional.
  NetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'to': ?to,
    };
  }

  factory NetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange(
      from: map['from'] == null ? null : map['from'] as int,
      to: map['to'] == null ? null : map['to'] as int,
    );
  }
}


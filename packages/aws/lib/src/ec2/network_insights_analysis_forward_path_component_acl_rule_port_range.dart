// ignore_for_file: unused_element, unnecessary_cast


class NetworkInsightsAnalysisForwardPathComponentAclRulePortRange {
  final int? from;
  final int? to;

  /// Creates a new [NetworkInsightsAnalysisForwardPathComponentAclRulePortRange].
  /// [from] Optional.
  /// [to] Optional.
  NetworkInsightsAnalysisForwardPathComponentAclRulePortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'to': ?to,
    };
  }

  factory NetworkInsightsAnalysisForwardPathComponentAclRulePortRange.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisForwardPathComponentAclRulePortRange(
      from: map['from'] == null ? null : map['from'] as int,
      to: map['to'] == null ? null : map['to'] as int,
    );
  }
}


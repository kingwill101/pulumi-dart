// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsAnalysisExplanationAclRulePortRange {
  final int? from;
  final int? to;

  /// Creates a new [NetworkInsightsAnalysisExplanationAclRulePortRange].
  /// [from] Optional.
  /// [to] Optional.
  NetworkInsightsAnalysisExplanationAclRulePortRange({this.from, this.to});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': ?from, 'to': ?to};
  }

  factory NetworkInsightsAnalysisExplanationAclRulePortRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisExplanationAclRulePortRange(
      from: map['from'] == null ? null : map['from'] as int,
      to: map['to'] == null ? null : map['to'] as int,
    );
  }
}

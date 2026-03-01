// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsAnalysisReturnPathComponentAclRulePortRange {
  final int? from;
  final int? to;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponentAclRulePortRange].
  /// [from] Optional.
  /// [to] Optional.
  NetworkInsightsAnalysisReturnPathComponentAclRulePortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': ?from, 'to': ?to};
  }

  factory NetworkInsightsAnalysisReturnPathComponentAclRulePortRange.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisReturnPathComponentAclRulePortRange(
      from: map['from'] == null ? null : map['from'] as int,
      to: map['to'] == null ? null : map['to'] as int,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisReturnPathComponentAclRulePortRange {
  final int from;
  final int to;

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentAclRulePortRange].
  /// [from] Required.
  /// [to] Required.
  GetNetworkInsightsAnalysisReturnPathComponentAclRulePortRange({
    required this.from,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['from'] = from;
    map['to'] = to;
    return map;
  }

  factory GetNetworkInsightsAnalysisReturnPathComponentAclRulePortRange.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisReturnPathComponentAclRulePortRange(
      from: map['from'] as int,
      to: map['to'] as int,
    );
  }
}

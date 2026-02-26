// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange {
  final int? from;
  final int? to;

  NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fromValue = from;
    if (fromValue != null) {
      map['from'] = fromValue;
    }
    final toValue = to;
    if (toValue != null) {
      map['to'] = toValue;
    }
    return map;
  }

  factory NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange(
      from: map['from'] == null ? null : map['from'] as int,
      to: map['to'] == null ? null : map['to'] as int,
    );
  }
}

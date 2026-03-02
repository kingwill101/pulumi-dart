// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAnalysisExplanationAclRulePortRange {
  final pulumi.Input<int>? from;
  final pulumi.Input<int>? to;

  /// Creates a new [NetworkInsightsAnalysisExplanationAclRulePortRange].
  /// [from] Optional.
  /// [to] Optional.
  NetworkInsightsAnalysisExplanationAclRulePortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'to': ?to,
    };
  }

  factory NetworkInsightsAnalysisExplanationAclRulePortRange.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisExplanationAclRulePortRange(
      from: map['from'] == null ? null : (map['from'] as int).input(),
      to: map['to'] == null ? null : (map['to'] as int).input(),
    );
  }
}


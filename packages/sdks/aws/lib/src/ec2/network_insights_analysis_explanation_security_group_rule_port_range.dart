// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange {
  final pulumi.Input<int>? from;
  final pulumi.Input<int>? to;

  /// Creates a new [NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange].
  /// [from] Optional.
  /// [to] Optional.
  const NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange({
    this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': ?from,
      'to': ?to,
    };
  }

  factory NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisExplanationSecurityGroupRulePortRange(
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

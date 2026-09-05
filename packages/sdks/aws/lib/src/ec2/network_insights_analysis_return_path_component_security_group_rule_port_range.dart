// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange {
  final pulumi.Input<int?>? from;
  final pulumi.Input<int?>? to;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange].
  /// [from] Optional.
  /// [to] Optional.
  const NetworkInsightsAnalysisReturnPathComponentSecurityGroupRulePortRange({
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
      from: (() { final guardedValue = map['from']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}

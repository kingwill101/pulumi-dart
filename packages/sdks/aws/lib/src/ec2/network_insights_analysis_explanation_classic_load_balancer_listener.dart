// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAnalysisExplanationClassicLoadBalancerListener {
  final pulumi.Input<int?>? instancePort;
  final pulumi.Input<int?>? loadBalancerPort;

  /// Creates a new [NetworkInsightsAnalysisExplanationClassicLoadBalancerListener].
  /// [instancePort] Optional.
  /// [loadBalancerPort] Optional.
  const NetworkInsightsAnalysisExplanationClassicLoadBalancerListener({
    this.instancePort,
    this.loadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancePort': ?instancePort,
      'loadBalancerPort': ?loadBalancerPort,
    };
  }

  factory NetworkInsightsAnalysisExplanationClassicLoadBalancerListener.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisExplanationClassicLoadBalancerListener(
      instancePort: (() { final guardedValue = map['instancePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      loadBalancerPort: (() { final guardedValue = map['loadBalancerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

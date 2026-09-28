// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener {
  final pulumi.Input<int> instancePort;
  final pulumi.Input<int> loadBalancerPort;

  /// Creates a new [GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener].
  /// [instancePort] Required.
  /// [loadBalancerPort] Required.
  const GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener({
    required this.instancePort,
    required this.loadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancePort': instancePort,
      'loadBalancerPort': loadBalancerPort,
    };
  }

  factory GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener(
      instancePort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['instancePort'])),
      loadBalancerPort: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['loadBalancerPort'])),
    );
  }
}

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
      instancePort: pulumi.Input.fromValue((map['instancePort'] as num).toInt()),
      loadBalancerPort: pulumi.Input.fromValue((map['loadBalancerPort'] as num).toInt()),
    );
  }
}

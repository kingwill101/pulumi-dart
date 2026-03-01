// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener {
  final int instancePort;
  final int loadBalancerPort;

  /// Creates a new [GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener].
  /// [instancePort] Required.
  /// [loadBalancerPort] Required.
  GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener({
    required this.instancePort,
    required this.loadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instancePort': instancePort,
      'loadBalancerPort': loadBalancerPort,
    };
  }

  factory GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener(
      instancePort: map['instancePort'] as int,
      loadBalancerPort: map['loadBalancerPort'] as int,
    );
  }
}

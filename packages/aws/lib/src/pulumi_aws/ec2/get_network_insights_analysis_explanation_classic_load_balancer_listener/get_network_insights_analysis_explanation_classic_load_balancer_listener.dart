// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener {
  final int instancePort;
  final int loadBalancerPort;

  GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener({
    required this.instancePort,
    required this.loadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instancePort'] = instancePort;
    map['loadBalancerPort'] = loadBalancerPort;
    return map;
  }

  factory GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationClassicLoadBalancerListener(
      instancePort: map['instancePort'] as int,
      loadBalancerPort: map['loadBalancerPort'] as int,
    );
  }
}

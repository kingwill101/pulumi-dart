// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsAnalysisExplanationClassicLoadBalancerListener {
  final int? instancePort;
  final int? loadBalancerPort;

  /// Creates a new [NetworkInsightsAnalysisExplanationClassicLoadBalancerListener].
  /// [instancePort] Optional.
  /// [loadBalancerPort] Optional.
  NetworkInsightsAnalysisExplanationClassicLoadBalancerListener({
    this.instancePort,
    this.loadBalancerPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instancePortValue = instancePort;
    if (instancePortValue != null) {
      map['instancePort'] = instancePortValue;
    }
    final loadBalancerPortValue = loadBalancerPort;
    if (loadBalancerPortValue != null) {
      map['loadBalancerPort'] = loadBalancerPortValue;
    }
    return map;
  }

  factory NetworkInsightsAnalysisExplanationClassicLoadBalancerListener.fromMap(
      Map<String, dynamic> map) {
    return NetworkInsightsAnalysisExplanationClassicLoadBalancerListener(
      instancePort:
          map['instancePort'] == null ? null : map['instancePort'] as int,
      loadBalancerPort: map['loadBalancerPort'] == null
          ? null
          : map['loadBalancerPort'] as int,
    );
  }
}

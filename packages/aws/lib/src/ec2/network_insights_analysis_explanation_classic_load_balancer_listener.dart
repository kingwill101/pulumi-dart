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
    return <String, dynamic>{
      'instancePort': ?instancePort,
      'loadBalancerPort': ?loadBalancerPort,
    };
  }

  factory NetworkInsightsAnalysisExplanationClassicLoadBalancerListener.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisExplanationClassicLoadBalancerListener(
      instancePort: map['instancePort'] == null
          ? null
          : map['instancePort'] as int,
      loadBalancerPort: map['loadBalancerPort'] == null
          ? null
          : map['loadBalancerPort'] as int,
    );
  }
}

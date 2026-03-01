// ignore_for_file: unused_element, unnecessary_cast


class DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute {
  /// List of Amazon Resource Names (ARNs) of the load balancer listeners.
  final List<String> listenerArns;

  /// Creates a new [DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute].
  /// [listenerArns] List of Amazon Resource Names (ARNs) of the load balancer listeners.
  DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute({
    required this.listenerArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listenerArns': listenerArns,
    };
  }

  factory DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute(
      listenerArns: (map['listenerArns'] as List).cast<String>(),
    );
  }
}


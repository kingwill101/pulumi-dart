// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute {
  /// List of Amazon Resource Names (ARNs) of the load balancer listeners.
  final List<String> listenerArns;

  DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute({
    required this.listenerArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['listenerArns'] = listenerArns;
    return map;
  }

  factory DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute.fromMap(
      Map<String, dynamic> map) {
    return DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute(
      listenerArns: (map['listenerArns'] as List).cast<String>(),
    );
  }
}

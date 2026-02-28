// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute {
  /// List of Amazon Resource Names (ARNs) of the load balancer listeners. Must contain exactly one listener ARN.
  final List<String> listenerArns;

  /// Creates a new [DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute].
  /// [listenerArns] List of Amazon Resource Names (ARNs) of the load balancer listeners. Must contain exactly one listener ARN.
  DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute({
    required this.listenerArns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['listenerArns'] = listenerArns;
    return map;
  }

  factory DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute.fromMap(
      Map<String, dynamic> map) {
    return DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute(
      listenerArns: (map['listenerArns'] as List).cast<String>(),
    );
  }
}

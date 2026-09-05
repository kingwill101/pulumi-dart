// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute {
  /// List of ARNs of the load balancer listeners.
  final pulumi.Input<List<String>> listenerArns;

  /// Creates a new [DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute].
  /// [listenerArns] List of ARNs of the load balancer listeners.
  const DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute({
    required this.listenerArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listenerArns': listenerArns,
    };
  }

  factory DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute(
      listenerArns: pulumi.Input.fromValue((map['listenerArns'] as List).cast<String>()),
    );
  }
}

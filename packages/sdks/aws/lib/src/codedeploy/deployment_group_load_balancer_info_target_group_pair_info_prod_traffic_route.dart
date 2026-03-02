// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute {
  /// List of Amazon Resource Names (ARNs) of the load balancer listeners. Must contain exactly one listener ARN.
  final pulumi.Input<List<String>> listenerArns;

  /// Creates a new [DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute].
  /// [listenerArns] List of Amazon Resource Names (ARNs) of the load balancer listeners. Must contain exactly one listener ARN.
  DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute({
    required this.listenerArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listenerArns': listenerArns,
    };
  }

  factory DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute(
      listenerArns: ((map['listenerArns'] as List).cast<String>()).input(),
    );
  }
}


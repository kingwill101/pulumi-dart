// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupLoadBalancerInfoElbInfo {
  /// The name of the load balancer that will be used to route traffic from original instances to replacement instances in a blue/green deployment. For in-place deployments, the name of the load balancer that instances are deregistered from so they are not serving traffic during a deployment, and then re-registered with after the deployment completes.
  final String? name;

  /// Creates a new [DeploymentGroupLoadBalancerInfoElbInfo].
  /// [name] The name of the load balancer that will be used to route traffic from original instances to replacement instances in a blue/green deployment. For in-place deployments, the name of the load balancer that instances are deregistered from so they are not serving traffic during a deployment, and then re-registered with after the deployment completes.
  DeploymentGroupLoadBalancerInfoElbInfo({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory DeploymentGroupLoadBalancerInfoElbInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentGroupLoadBalancerInfoElbInfo(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

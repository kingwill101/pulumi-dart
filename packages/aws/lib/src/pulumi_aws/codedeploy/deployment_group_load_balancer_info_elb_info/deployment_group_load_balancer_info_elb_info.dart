// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupLoadBalancerInfoElbInfo {
  /// The name of the load balancer that will be used to route traffic from original instances to replacement instances in a blue/green deployment. For in-place deployments, the name of the load balancer that instances are deregistered from so they are not serving traffic during a deployment, and then re-registered with after the deployment completes.
  final String? name;

  DeploymentGroupLoadBalancerInfoElbInfo({
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory DeploymentGroupLoadBalancerInfoElbInfo.fromMap(
      Map<String, dynamic> map) {
    return DeploymentGroupLoadBalancerInfoElbInfo(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

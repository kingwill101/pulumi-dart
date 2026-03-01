// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupLoadBalancerInfoTargetGroupInfo {
  /// The name of the target group that instances in the original environment are deregistered from, and instances in the replacement environment registered with. For in-place deployments, the name of the target group that instances are deregistered from, so they are not serving traffic during a deployment, and then re-registered with after the deployment completes.
  final String? name;

  /// Creates a new [DeploymentGroupLoadBalancerInfoTargetGroupInfo].
  /// [name] The name of the target group that instances in the original environment are deregistered from, and instances in the replacement environment registered with. For in-place deployments, the name of the target group that instances are deregistered from, so they are not serving traffic during a deployment, and then re-registered with after the deployment completes.
  DeploymentGroupLoadBalancerInfoTargetGroupInfo({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory DeploymentGroupLoadBalancerInfoTargetGroupInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentGroupLoadBalancerInfoTargetGroupInfo(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

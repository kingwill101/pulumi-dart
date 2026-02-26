// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupLoadBalancerInfoTargetGroupInfo {
  /// The name of the target group that instances in the original environment are deregistered from, and instances in the replacement environment registered with. For in-place deployments, the name of the target group that instances are deregistered from, so they are not serving traffic during a deployment, and then re-registered with after the deployment completes.
  final String? name;

  DeploymentGroupLoadBalancerInfoTargetGroupInfo({
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

  factory DeploymentGroupLoadBalancerInfoTargetGroupInfo.fromMap(
      Map<String, dynamic> map) {
    return DeploymentGroupLoadBalancerInfoTargetGroupInfo(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

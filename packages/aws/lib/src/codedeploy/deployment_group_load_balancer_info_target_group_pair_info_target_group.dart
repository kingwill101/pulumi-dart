// ignore_for_file: unused_element, unnecessary_cast

class DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup {
  /// Name of the target group.
  final String name;

  /// Creates a new [DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup].
  /// [name] Name of the target group.
  DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup.fromMap(
      Map<String, dynamic> map) {
    return DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup(
      name: map['name'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup {
  /// Name of the target group.
  final pulumi.Input<String> name;

  /// Creates a new [DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup].
  /// [name] Name of the target group.
  DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

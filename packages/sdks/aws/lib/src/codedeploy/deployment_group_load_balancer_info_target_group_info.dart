// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentGroupLoadBalancerInfoTargetGroupInfo {
  /// The name of the target group that instances in the original environment are deregistered from, and instances in the replacement environment registered with. For in-place deployments, the name of the target group that instances are deregistered from, so they are not serving traffic during a deployment, and then re-registered with after the deployment completes.
  final pulumi.Input<String>? name;

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
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

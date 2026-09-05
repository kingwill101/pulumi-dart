// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_group_load_balancer_info_target_group_pair_info_prod_traffic_route.dart';
import 'deployment_group_load_balancer_info_target_group_pair_info_target_group.dart';
import 'deployment_group_load_balancer_info_target_group_pair_info_test_traffic_route.dart';

class DeploymentGroupLoadBalancerInfoTargetGroupPairInfo {
  /// Configuration block for the production traffic route (documented below).
  final pulumi.Input<DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute> prodTrafficRoute;
  /// Configuration blocks for a target group within a target group pair (documented below).
  final pulumi.Input<List<DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup>> targetGroups;
  /// Configuration block for the test traffic route (documented below).
  final pulumi.Input<DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute?>? testTrafficRoute;

  /// Creates a new [DeploymentGroupLoadBalancerInfoTargetGroupPairInfo].
  /// [prodTrafficRoute] Configuration block for the production traffic route (documented below).
  /// [targetGroups] Configuration blocks for a target group within a target group pair (documented below).
  /// [testTrafficRoute] Configuration block for the test traffic route (documented below).
  const DeploymentGroupLoadBalancerInfoTargetGroupPairInfo({
    required this.prodTrafficRoute,
    required this.targetGroups,
    this.testTrafficRoute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prodTrafficRoute': pulumi.Input.mapInputValue<DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute, Map<String, dynamic>>(prodTrafficRoute, (value) => value.toMap()),
      'targetGroups': pulumi.Input.mapInputValue<List<DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup>, List<Map<String, dynamic>>>(targetGroups, (value) => pulumi.Input.encodeList<DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testTrafficRoute': ?pulumi.Input.mapOptionalInputValue<DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute, Map<String, dynamic>>(testTrafficRoute, (value) => value.toMap()),
    };
  }

  factory DeploymentGroupLoadBalancerInfoTargetGroupPairInfo.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupLoadBalancerInfoTargetGroupPairInfo(
      prodTrafficRoute: pulumi.Input.fromValue(DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute.fromMap((map['prodTrafficRoute']! as Map).cast<String, dynamic>())),
      targetGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup>(map['targetGroups']!, (value) => DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup.fromMap((value as Map).cast<String, dynamic>()))),
      testTrafficRoute: (() { final guardedValue = map['testTrafficRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

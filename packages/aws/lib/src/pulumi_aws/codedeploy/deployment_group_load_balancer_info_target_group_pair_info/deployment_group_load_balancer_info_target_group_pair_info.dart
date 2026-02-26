// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../deployment_group_load_balancer_info_target_group_pair_info_prod_traffic_route/deployment_group_load_balancer_info_target_group_pair_info_prod_traffic_route.dart';
import '../deployment_group_load_balancer_info_target_group_pair_info_target_group/deployment_group_load_balancer_info_target_group_pair_info_target_group.dart';
import '../deployment_group_load_balancer_info_target_group_pair_info_test_traffic_route/deployment_group_load_balancer_info_target_group_pair_info_test_traffic_route.dart';

class DeploymentGroupLoadBalancerInfoTargetGroupPairInfo {
  /// Configuration block for the production traffic route (documented below).
  final DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute
      prodTrafficRoute;

  /// Configuration blocks for a target group within a target group pair (documented below).
  final List<DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup>
      targetGroups;

  /// Configuration block for the test traffic route (documented below).
  final DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute?
      testTrafficRoute;

  DeploymentGroupLoadBalancerInfoTargetGroupPairInfo({
    required this.prodTrafficRoute,
    required this.targetGroups,
    this.testTrafficRoute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['prodTrafficRoute'] = prodTrafficRoute.toMap();
    map['targetGroups'] = Input.encodeList<
        DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup,
        Map<String, dynamic>>(targetGroups, (value) => value.toMap());
    final testTrafficRouteValue = testTrafficRoute;
    if (testTrafficRouteValue != null) {
      map['testTrafficRoute'] = testTrafficRouteValue.toMap();
    }
    return map;
  }

  factory DeploymentGroupLoadBalancerInfoTargetGroupPairInfo.fromMap(
      Map<String, dynamic> map) {
    return DeploymentGroupLoadBalancerInfoTargetGroupPairInfo(
      prodTrafficRoute:
          DeploymentGroupLoadBalancerInfoTargetGroupPairInfoProdTrafficRoute
              .fromMap(
                  (map['prodTrafficRoute'] as Map).cast<String, dynamic>()),
      targetGroups: Input.decodeList<
              DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup>(
          map['targetGroups'],
          (value) =>
              DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTargetGroup
                  .fromMap((value as Map).cast<String, dynamic>())),
      testTrafficRoute: map['testTrafficRoute'] == null
          ? null
          : DeploymentGroupLoadBalancerInfoTargetGroupPairInfoTestTrafficRoute
              .fromMap(
                  (map['testTrafficRoute'] as Map).cast<String, dynamic>()),
    );
  }
}

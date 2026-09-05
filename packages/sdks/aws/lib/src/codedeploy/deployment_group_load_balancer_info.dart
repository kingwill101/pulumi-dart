// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_group_load_balancer_info_elb_info.dart';
import 'deployment_group_load_balancer_info_target_group_info.dart';
import 'deployment_group_load_balancer_info_target_group_pair_info.dart';

class DeploymentGroupLoadBalancerInfo {
  /// The Classic Elastic Load Balancer to use in a deployment. Conflicts with `targetGroupInfo` and `targetGroupPairInfo`.
  final pulumi.Input<List<DeploymentGroupLoadBalancerInfoElbInfo>?>? elbInfos;
  /// The (Application/Network Load Balancer) target group to use in a deployment. Conflicts with `elbInfo` and `targetGroupPairInfo`.
  final pulumi.Input<List<DeploymentGroupLoadBalancerInfoTargetGroupInfo>?>? targetGroupInfos;
  /// The (Application/Network Load Balancer) target group pair to use in a deployment. Conflicts with `elbInfo` and `targetGroupInfo`.
  final pulumi.Input<DeploymentGroupLoadBalancerInfoTargetGroupPairInfo?>? targetGroupPairInfo;

  /// Creates a new [DeploymentGroupLoadBalancerInfo].
  /// [elbInfos] The Classic Elastic Load Balancer to use in a deployment. Conflicts with `targetGroupInfo` and `targetGroupPairInfo`.
  /// [targetGroupInfos] The (Application/Network Load Balancer) target group to use in a deployment. Conflicts with `elbInfo` and `targetGroupPairInfo`.
  /// [targetGroupPairInfo] The (Application/Network Load Balancer) target group pair to use in a deployment. Conflicts with `elbInfo` and `targetGroupInfo`.
  const DeploymentGroupLoadBalancerInfo({
    this.elbInfos,
    this.targetGroupInfos,
    this.targetGroupPairInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elbInfos': ?pulumi.Input.mapOptionalInputValue<List<DeploymentGroupLoadBalancerInfoElbInfo>, List<Map<String, dynamic>>>(elbInfos, (value) => pulumi.Input.encodeList<DeploymentGroupLoadBalancerInfoElbInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetGroupInfos': ?pulumi.Input.mapOptionalInputValue<List<DeploymentGroupLoadBalancerInfoTargetGroupInfo>, List<Map<String, dynamic>>>(targetGroupInfos, (value) => pulumi.Input.encodeList<DeploymentGroupLoadBalancerInfoTargetGroupInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetGroupPairInfo': ?pulumi.Input.mapOptionalInputValue<DeploymentGroupLoadBalancerInfoTargetGroupPairInfo, Map<String, dynamic>>(targetGroupPairInfo, (value) => value.toMap()),
    };
  }

  factory DeploymentGroupLoadBalancerInfo.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupLoadBalancerInfo(
      elbInfos: (() { final guardedValue = map['elbInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentGroupLoadBalancerInfoElbInfo>(guardedValue, (value) => DeploymentGroupLoadBalancerInfoElbInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetGroupInfos: (() { final guardedValue = map['targetGroupInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DeploymentGroupLoadBalancerInfoTargetGroupInfo>(guardedValue, (value) => DeploymentGroupLoadBalancerInfoTargetGroupInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      targetGroupPairInfo: (() { final guardedValue = map['targetGroupPairInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentGroupLoadBalancerInfoTargetGroupPairInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

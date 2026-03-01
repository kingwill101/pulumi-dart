// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_group_load_balancer_info_elb_info.dart';
import 'deployment_group_load_balancer_info_target_group_info.dart';
import 'deployment_group_load_balancer_info_target_group_pair_info.dart';

class DeploymentGroupLoadBalancerInfo {
  /// The Classic Elastic Load Balancer to use in a deployment. Conflicts with `target_group_info` and `target_group_pair_info`.
  final List<DeploymentGroupLoadBalancerInfoElbInfo>? elbInfos;
  /// The (Application/Network Load Balancer) target group to use in a deployment. Conflicts with `elb_info` and `target_group_pair_info`.
  final List<DeploymentGroupLoadBalancerInfoTargetGroupInfo>? targetGroupInfos;
  /// The (Application/Network Load Balancer) target group pair to use in a deployment. Conflicts with `elb_info` and `target_group_info`.
  final DeploymentGroupLoadBalancerInfoTargetGroupPairInfo? targetGroupPairInfo;

  /// Creates a new [DeploymentGroupLoadBalancerInfo].
  /// [elbInfos] The Classic Elastic Load Balancer to use in a deployment. Conflicts with `target_group_info` and `target_group_pair_info`.
  /// [targetGroupInfos] The (Application/Network Load Balancer) target group to use in a deployment. Conflicts with `elb_info` and `target_group_pair_info`.
  /// [targetGroupPairInfo] The (Application/Network Load Balancer) target group pair to use in a deployment. Conflicts with `elb_info` and `target_group_info`.
  DeploymentGroupLoadBalancerInfo({
    this.elbInfos,
    this.targetGroupInfos,
    this.targetGroupPairInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elbInfos': ?elbInfos == null ? null : pulumi.Input.encodeList<DeploymentGroupLoadBalancerInfoElbInfo, Map<String, dynamic>>(elbInfos!, (value) => value.toMap()),
      'targetGroupInfos': ?targetGroupInfos == null ? null : pulumi.Input.encodeList<DeploymentGroupLoadBalancerInfoTargetGroupInfo, Map<String, dynamic>>(targetGroupInfos!, (value) => value.toMap()),
      'targetGroupPairInfo': ?targetGroupPairInfo == null ? null : targetGroupPairInfo!.toMap(),
    };
  }

  factory DeploymentGroupLoadBalancerInfo.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupLoadBalancerInfo(
      elbInfos: map['elbInfos'] == null ? null : pulumi.Input.decodeList<DeploymentGroupLoadBalancerInfoElbInfo>(map['elbInfos'], (value) => DeploymentGroupLoadBalancerInfoElbInfo.fromMap((value as Map).cast<String, dynamic>())),
      targetGroupInfos: map['targetGroupInfos'] == null ? null : pulumi.Input.decodeList<DeploymentGroupLoadBalancerInfoTargetGroupInfo>(map['targetGroupInfos'], (value) => DeploymentGroupLoadBalancerInfoTargetGroupInfo.fromMap((value as Map).cast<String, dynamic>())),
      targetGroupPairInfo: map['targetGroupPairInfo'] == null ? null : DeploymentGroupLoadBalancerInfoTargetGroupPairInfo.fromMap((map['targetGroupPairInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


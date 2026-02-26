// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../deployment_group_load_balancer_info_elb_info/deployment_group_load_balancer_info_elb_info.dart';
import '../deployment_group_load_balancer_info_target_group_info/deployment_group_load_balancer_info_target_group_info.dart';
import '../deployment_group_load_balancer_info_target_group_pair_info/deployment_group_load_balancer_info_target_group_pair_info.dart';

class DeploymentGroupLoadBalancerInfo {
  /// The Classic Elastic Load Balancer to use in a deployment. Conflicts with <span pulumi-lang-nodejs="`targetGroupInfo`" pulumi-lang-dotnet="`TargetGroupInfo`" pulumi-lang-go="`targetGroupInfo`" pulumi-lang-python="`target_group_info`" pulumi-lang-yaml="`targetGroupInfo`" pulumi-lang-java="`targetGroupInfo`">`target_group_info`</span> and <span pulumi-lang-nodejs="`targetGroupPairInfo`" pulumi-lang-dotnet="`TargetGroupPairInfo`" pulumi-lang-go="`targetGroupPairInfo`" pulumi-lang-python="`target_group_pair_info`" pulumi-lang-yaml="`targetGroupPairInfo`" pulumi-lang-java="`targetGroupPairInfo`">`target_group_pair_info`</span>.
  final List<DeploymentGroupLoadBalancerInfoElbInfo>? elbInfos;

  /// The (Application/Network Load Balancer) target group to use in a deployment. Conflicts with <span pulumi-lang-nodejs="`elbInfo`" pulumi-lang-dotnet="`ElbInfo`" pulumi-lang-go="`elbInfo`" pulumi-lang-python="`elb_info`" pulumi-lang-yaml="`elbInfo`" pulumi-lang-java="`elbInfo`">`elb_info`</span> and <span pulumi-lang-nodejs="`targetGroupPairInfo`" pulumi-lang-dotnet="`TargetGroupPairInfo`" pulumi-lang-go="`targetGroupPairInfo`" pulumi-lang-python="`target_group_pair_info`" pulumi-lang-yaml="`targetGroupPairInfo`" pulumi-lang-java="`targetGroupPairInfo`">`target_group_pair_info`</span>.
  final List<DeploymentGroupLoadBalancerInfoTargetGroupInfo>? targetGroupInfos;

  /// The (Application/Network Load Balancer) target group pair to use in a deployment. Conflicts with <span pulumi-lang-nodejs="`elbInfo`" pulumi-lang-dotnet="`ElbInfo`" pulumi-lang-go="`elbInfo`" pulumi-lang-python="`elb_info`" pulumi-lang-yaml="`elbInfo`" pulumi-lang-java="`elbInfo`">`elb_info`</span> and <span pulumi-lang-nodejs="`targetGroupInfo`" pulumi-lang-dotnet="`TargetGroupInfo`" pulumi-lang-go="`targetGroupInfo`" pulumi-lang-python="`target_group_info`" pulumi-lang-yaml="`targetGroupInfo`" pulumi-lang-java="`targetGroupInfo`">`target_group_info`</span>.
  final DeploymentGroupLoadBalancerInfoTargetGroupPairInfo? targetGroupPairInfo;

  DeploymentGroupLoadBalancerInfo({
    this.elbInfos,
    this.targetGroupInfos,
    this.targetGroupPairInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final elbInfosValue = elbInfos;
    if (elbInfosValue != null) {
      map['elbInfos'] = Input.encodeList<DeploymentGroupLoadBalancerInfoElbInfo,
          Map<String, dynamic>>(elbInfosValue, (value) => value.toMap());
    }
    final targetGroupInfosValue = targetGroupInfos;
    if (targetGroupInfosValue != null) {
      map['targetGroupInfos'] = Input.encodeList<
              DeploymentGroupLoadBalancerInfoTargetGroupInfo,
              Map<String, dynamic>>(
          targetGroupInfosValue, (value) => value.toMap());
    }
    final targetGroupPairInfoValue = targetGroupPairInfo;
    if (targetGroupPairInfoValue != null) {
      map['targetGroupPairInfo'] = targetGroupPairInfoValue.toMap();
    }
    return map;
  }

  factory DeploymentGroupLoadBalancerInfo.fromMap(Map<String, dynamic> map) {
    return DeploymentGroupLoadBalancerInfo(
      elbInfos: map['elbInfos'] == null
          ? null
          : Input.decodeList<DeploymentGroupLoadBalancerInfoElbInfo>(
              map['elbInfos'],
              (value) => DeploymentGroupLoadBalancerInfoElbInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      targetGroupInfos: map['targetGroupInfos'] == null
          ? null
          : Input.decodeList<DeploymentGroupLoadBalancerInfoTargetGroupInfo>(
              map['targetGroupInfos'],
              (value) => DeploymentGroupLoadBalancerInfoTargetGroupInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
      targetGroupPairInfo: map['targetGroupPairInfo'] == null
          ? null
          : DeploymentGroupLoadBalancerInfoTargetGroupPairInfo.fromMap(
              (map['targetGroupPairInfo'] as Map).cast<String, dynamic>()),
    );
  }
}

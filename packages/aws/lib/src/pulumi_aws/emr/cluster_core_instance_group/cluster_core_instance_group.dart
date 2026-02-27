// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_core_instance_group_ebs_config/cluster_core_instance_group_ebs_config.dart';

class ClusterCoreInstanceGroup {
  /// String containing the [EMR Auto Scaling Policy](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html) JSON.
  final String? autoscalingPolicy;

  /// Bid price for each EC2 instance in the instance group, expressed in USD. By setting this attribute, the instance group is being declared as a Spot Instance, and will implicitly create a Spot request. Leave this blank to use On-Demand Instances.
  final String? bidPrice;

  /// Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below.
  final List<ClusterCoreInstanceGroupEbsConfig>? ebsConfigs;

  /// Core node type Instance Group ID, if using Instance Group for this node type.
  final String? id;

  /// Target number of instances for the instance group. Must be at least 1. Defaults to 1.
  final int? instanceCount;

  /// EC2 instance type for all instances in the instance group.
  final String instanceType;

  /// Friendly name given to the instance group.
  final String? name;

  ClusterCoreInstanceGroup({
    this.autoscalingPolicy,
    this.bidPrice,
    this.ebsConfigs,
    this.id,
    this.instanceCount,
    required this.instanceType,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingPolicyValue = autoscalingPolicy;
    if (autoscalingPolicyValue != null) {
      map['autoscalingPolicy'] = autoscalingPolicyValue;
    }
    final bidPriceValue = bidPrice;
    if (bidPriceValue != null) {
      map['bidPrice'] = bidPriceValue;
    }
    final ebsConfigsValue = ebsConfigs;
    if (ebsConfigsValue != null) {
      map['ebsConfigs'] = pulumi.Input.encodeList<
          ClusterCoreInstanceGroupEbsConfig,
          Map<String, dynamic>>(ebsConfigsValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final instanceCountValue = instanceCount;
    if (instanceCountValue != null) {
      map['instanceCount'] = instanceCountValue;
    }
    map['instanceType'] = instanceType;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory ClusterCoreInstanceGroup.fromMap(Map<String, dynamic> map) {
    return ClusterCoreInstanceGroup(
      autoscalingPolicy: map['autoscalingPolicy'] == null
          ? null
          : map['autoscalingPolicy'] as String,
      bidPrice: map['bidPrice'] == null ? null : map['bidPrice'] as String,
      ebsConfigs: map['ebsConfigs'] == null
          ? null
          : pulumi.Input.decodeList<ClusterCoreInstanceGroupEbsConfig>(
              map['ebsConfigs'],
              (value) => ClusterCoreInstanceGroupEbsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      instanceCount:
          map['instanceCount'] == null ? null : map['instanceCount'] as int,
      instanceType: map['instanceType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

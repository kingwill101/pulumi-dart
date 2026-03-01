// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_core_instance_group_ebs_config.dart';

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

  /// Creates a new [ClusterCoreInstanceGroup].
  /// [autoscalingPolicy] String containing the [EMR Auto Scaling Policy](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html) JSON.
  /// [bidPrice] Bid price for each EC2 instance in the instance group, expressed in USD. By setting this attribute, the instance group is being declared as a Spot Instance, and will implicitly create a Spot request. Leave this blank to use On-Demand Instances.
  /// [ebsConfigs] Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below.
  /// [id] Core node type Instance Group ID, if using Instance Group for this node type.
  /// [instanceCount] Target number of instances for the instance group. Must be at least 1. Defaults to 1.
  /// [instanceType] EC2 instance type for all instances in the instance group.
  /// [name] Friendly name given to the instance group.
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
    return <String, dynamic>{
      'autoscalingPolicy': ?autoscalingPolicy,
      'bidPrice': ?bidPrice,
      'ebsConfigs': ?ebsConfigs == null
          ? null
          : pulumi.Input.encodeList<
              ClusterCoreInstanceGroupEbsConfig,
              Map<String, dynamic>
            >(ebsConfigs!, (value) => value.toMap()),
      'id': ?id,
      'instanceCount': ?instanceCount,
      'instanceType': instanceType,
      'name': ?name,
    };
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
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] == null ? null : map['id'] as String,
      instanceCount: map['instanceCount'] == null
          ? null
          : map['instanceCount'] as int,
      instanceType: map['instanceType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

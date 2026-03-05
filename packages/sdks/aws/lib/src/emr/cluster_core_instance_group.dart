// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_core_instance_group_ebs_config.dart';

class ClusterCoreInstanceGroup {
  /// String containing the [EMR Auto Scaling Policy](https://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-automatic-scaling.html) JSON.
  final pulumi.Input<String>? autoscalingPolicy;
  /// Bid price for each EC2 instance in the instance group, expressed in USD. By setting this attribute, the instance group is being declared as a Spot Instance, and will implicitly create a Spot request. Leave this blank to use On-Demand Instances.
  final pulumi.Input<String>? bidPrice;
  /// Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below.
  final pulumi.Input<List<ClusterCoreInstanceGroupEbsConfig>>? ebsConfigs;
  /// Core node type Instance Group ID, if using Instance Group for this node type.
  final pulumi.Input<String>? id;
  /// Target number of instances for the instance group. Must be at least 1. Defaults to 1.
  final pulumi.Input<int>? instanceCount;
  /// EC2 instance type for all instances in the instance group.
  final pulumi.Input<String> instanceType;
  /// Friendly name given to the instance group.
  final pulumi.Input<String>? name;

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
      'ebsConfigs': ?pulumi.Input.mapOptionalInputValue<List<ClusterCoreInstanceGroupEbsConfig>, List<Map<String, dynamic>>>(ebsConfigs, (value) => pulumi.Input.encodeList<ClusterCoreInstanceGroupEbsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'instanceCount': ?instanceCount,
      'instanceType': instanceType,
      'name': ?name,
    };
  }

  factory ClusterCoreInstanceGroup.fromMap(Map<String, dynamic> map) {
    return ClusterCoreInstanceGroup(
      autoscalingPolicy: (() { final guardedValue = map['autoscalingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bidPrice: (() { final guardedValue = map['bidPrice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ebsConfigs: (() { final guardedValue = map['ebsConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterCoreInstanceGroupEbsConfig>(guardedValue, (value) => ClusterCoreInstanceGroupEbsConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_master_instance_group_ebs_config/cluster_master_instance_group_ebs_config.dart';

class ClusterMasterInstanceGroup {
  /// Bid price for each EC2 instance in the instance group, expressed in USD. By setting this attribute, the instance group is being declared as a Spot Instance, and will implicitly create a Spot request. Leave this blank to use On-Demand Instances.
  final String? bidPrice;

  /// Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below.
  final List<ClusterMasterInstanceGroupEbsConfig>? ebsConfigs;

  /// Master node type Instance Group ID, if using Instance Group for this node type.
  final String? id;

  /// Target number of instances for the instance group. Must be 1 or 3. Defaults to 1. Launching with multiple master nodes is only supported in EMR version 5.23.0+, and requires this resource's `core_instance_group` to be configured. Public (Internet accessible) instances must be created in VPC subnets that have map public IP on launch enabled. Termination protection is automatically enabled when launched with multiple master nodes and this provider must have the `termination_protection = false` configuration applied before destroying this resource.
  final int? instanceCount;

  /// EC2 instance type for all instances in the instance group.
  final String instanceType;

  /// Friendly name given to the instance group.
  final String? name;

  ClusterMasterInstanceGroup({
    this.bidPrice,
    this.ebsConfigs,
    this.id,
    this.instanceCount,
    required this.instanceType,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bidPriceValue = bidPrice;
    if (bidPriceValue != null) {
      map['bidPrice'] = bidPriceValue;
    }
    final ebsConfigsValue = ebsConfigs;
    if (ebsConfigsValue != null) {
      map['ebsConfigs'] = pulumi.Input.encodeList<
          ClusterMasterInstanceGroupEbsConfig,
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

  factory ClusterMasterInstanceGroup.fromMap(Map<String, dynamic> map) {
    return ClusterMasterInstanceGroup(
      bidPrice: map['bidPrice'] == null ? null : map['bidPrice'] as String,
      ebsConfigs: map['ebsConfigs'] == null
          ? null
          : pulumi.Input.decodeList<ClusterMasterInstanceGroupEbsConfig>(
              map['ebsConfigs'],
              (value) => ClusterMasterInstanceGroupEbsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      instanceCount:
          map['instanceCount'] == null ? null : map['instanceCount'] as int,
      instanceType: map['instanceType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

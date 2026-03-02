// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceReplicaSet {
  /// The connection address of the node.
  final pulumi.Input<String>? connectionDomain;
  /// The connection port of the node.
  final pulumi.Input<String>? connectionPort;
  /// The network type of the instance. Valid values: `VPC`.
  /// > **NOTE:** From 2022.2.21, `network_type` cannot be set to `Classic`. For more information, see[Product Notification](https://www.alibabacloud.com/help/en/mongodb/product-overview/eol-notice-for-apsaradb-for-mongodb-instances-in-the-classic-network)
  final pulumi.Input<String>? networkType;
  /// The role of the node.
  final pulumi.Input<String>? replicaSetRole;
  /// The id of the role.
  final pulumi.Input<String>? roleId;
  /// VPC instance ID.
  final pulumi.Input<String>? vpcCloudInstanceId;
  /// The ID of the VPC. > **NOTE:** `vpc_id` is valid only when `network_type` is set to `VPC`.
  final pulumi.Input<String>? vpcId;
  /// The virtual switch ID to launch DB instances in one VPC.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [InstanceReplicaSet].
  /// [connectionDomain] The connection address of the node.
  /// [connectionPort] The connection port of the node.
  /// [networkType] The network type of the instance. Valid values: `VPC`.
  /// [replicaSetRole] The role of the node.
  /// [roleId] The id of the role.
  /// [vpcCloudInstanceId] VPC instance ID.
  /// [vpcId] The ID of the VPC. > **NOTE:** `vpc_id` is valid only when `network_type` is set to `VPC`.
  /// [vswitchId] The virtual switch ID to launch DB instances in one VPC.
  InstanceReplicaSet({
    this.connectionDomain,
    this.connectionPort,
    this.networkType,
    this.replicaSetRole,
    this.roleId,
    this.vpcCloudInstanceId,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionDomain': ?connectionDomain,
      'connectionPort': ?connectionPort,
      'networkType': ?networkType,
      'replicaSetRole': ?replicaSetRole,
      'roleId': ?roleId,
      'vpcCloudInstanceId': ?vpcCloudInstanceId,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory InstanceReplicaSet.fromMap(Map<String, dynamic> map) {
    return InstanceReplicaSet(
      connectionDomain: map['connectionDomain'] == null ? null : (map['connectionDomain'] as String).input(),
      connectionPort: map['connectionPort'] == null ? null : (map['connectionPort'] as String).input(),
      networkType: map['networkType'] == null ? null : (map['networkType'] as String).input(),
      replicaSetRole: map['replicaSetRole'] == null ? null : (map['replicaSetRole'] as String).input(),
      roleId: map['roleId'] == null ? null : (map['roleId'] as String).input(),
      vpcCloudInstanceId: map['vpcCloudInstanceId'] == null ? null : (map['vpcCloudInstanceId'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}


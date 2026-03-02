// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PolardbxInstance resources.
class PolardbxInstanceState {
  /// Compute node specifications.
  final pulumi.Input<String>? cnClass;
  /// Number of computing nodes.
  final pulumi.Input<int>? cnNodeCount;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Instance remarks
  final pulumi.Input<String>? description;
  /// Storage node specifications.
  final pulumi.Input<String>? dnClass;
  /// The number of storage nodes.
  final pulumi.Input<int>? dnNodeCount;
  /// Engine version, default 5.7
  final pulumi.Input<String>? engineVersion;
  /// Whether the instance is read-only.
  final pulumi.Input<bool>? isReadDbInstance;
  /// If the instance is a read-only instance, you must specify the primary instance.
  ///
  /// > **NOTE:** The parameter is immutable after resource creation. It only applies during resource creation and has no effect when modified post-creation.
  final pulumi.Input<String>? primaryDbInstanceName;
  /// Primary Availability Zone.
  final pulumi.Input<String>? primaryZone;
  /// The region ID of the resource
  final pulumi.Input<String>? regionId;
  /// The resource group ID can be empty. This parameter is not supported for the time being.
  final pulumi.Input<String>? resourceGroupId;
  /// Secondary availability zone.
  final pulumi.Input<String>? secondaryZone;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// Third Availability Zone.
  final pulumi.Input<String>? tertiaryZone;
  /// Topology type:
  final pulumi.Input<String>? topologyType;
  /// The VPC ID.
  final pulumi.Input<String>? vpcId;
  /// The ID of the virtual switch.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [PolardbxInstanceState].
  /// [cnClass] Compute node specifications.
  /// [cnNodeCount] Number of computing nodes.
  /// [createTime] The creation time of the resource
  /// [description] Instance remarks
  /// [dnClass] Storage node specifications.
  /// [dnNodeCount] The number of storage nodes.
  /// [engineVersion] Engine version, default 5.7
  /// [isReadDbInstance] Whether the instance is read-only.
  /// [primaryDbInstanceName] If the instance is a read-only instance, you must specify the primary instance.
  /// [primaryZone] Primary Availability Zone.
  /// [regionId] The region ID of the resource
  /// [resourceGroupId] The resource group ID can be empty. This parameter is not supported for the time being.
  /// [secondaryZone] Secondary availability zone.
  /// [status] The status of the resource
  /// [tertiaryZone] Third Availability Zone.
  /// [topologyType] Topology type:
  /// [vpcId] The VPC ID.
  /// [vswitchId] The ID of the virtual switch.
  PolardbxInstanceState({
    this.cnClass,
    this.cnNodeCount,
    this.createTime,
    this.description,
    this.dnClass,
    this.dnNodeCount,
    this.engineVersion,
    this.isReadDbInstance,
    this.primaryDbInstanceName,
    this.primaryZone,
    this.regionId,
    this.resourceGroupId,
    this.secondaryZone,
    this.status,
    this.tertiaryZone,
    this.topologyType,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cnClass': ?cnClass,
      'cnNodeCount': ?cnNodeCount,
      'createTime': ?createTime,
      'description': ?description,
      'dnClass': ?dnClass,
      'dnNodeCount': ?dnNodeCount,
      'engineVersion': ?engineVersion,
      'isReadDbInstance': ?isReadDbInstance,
      'primaryDbInstanceName': ?primaryDbInstanceName,
      'primaryZone': ?primaryZone,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'secondaryZone': ?secondaryZone,
      'status': ?status,
      'tertiaryZone': ?tertiaryZone,
      'topologyType': ?topologyType,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory PolardbxInstanceState.fromMap(Map<String, dynamic> map) {
    return PolardbxInstanceState(
      cnClass: map['cnClass'] == null ? null : (map['cnClass']! as String).input(),
      cnNodeCount: map['cnNodeCount'] == null ? null : (map['cnNodeCount']! as int).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      dnClass: map['dnClass'] == null ? null : (map['dnClass']! as String).input(),
      dnNodeCount: map['dnNodeCount'] == null ? null : (map['dnNodeCount']! as int).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion']! as String).input(),
      isReadDbInstance: map['isReadDbInstance'] == null ? null : (map['isReadDbInstance']! as bool).input(),
      primaryDbInstanceName: map['primaryDbInstanceName'] == null ? null : (map['primaryDbInstanceName']! as String).input(),
      primaryZone: map['primaryZone'] == null ? null : (map['primaryZone']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      secondaryZone: map['secondaryZone'] == null ? null : (map['secondaryZone']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tertiaryZone: map['tertiaryZone'] == null ? null : (map['tertiaryZone']! as String).input(),
      topologyType: map['topologyType'] == null ? null : (map['topologyType']! as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}


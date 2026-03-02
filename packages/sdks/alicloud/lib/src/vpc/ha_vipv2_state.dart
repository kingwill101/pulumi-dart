// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HaVipv2 resources.
class HaVipv2State {
  /// EIP bound to HaVip
  final pulumi.Input<List<String>>? associatedEipAddresses;
  /// The type of the instance that is bound to the HaVip. Value:
  /// - `EcsInstance`: ECS instance.
  /// - `NetworkInterface`: ENI instance.
  final pulumi.Input<String>? associatedInstanceType;
  /// The ID of the ECS instance to be associated with the HAVIP.
  final pulumi.Input<List<String>>? associatedInstances;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The description of the HAVIP. The description must be 1 to 255 characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The ID of the HaVip instance.
  final pulumi.Input<String>? haVipId;
  /// The name of the HAVIP. The name must be 1 to 128 characters in length, and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? haVipName;
  /// . Field 'havip_name' has been deprecated from provider version 1.259.0. New field 'ha_vip_name' instead.
  final pulumi.Input<String>? havipName;
  /// The IP address of the HAVIP. The specified IP address must be an idle IP address that falls within the CIDR block of the vSwitch. If this parameter is not set, an idle IP address from the CIDR block of the vSwitch is randomly assigned to the HAVIP.
  final pulumi.Input<String>? ipAddress;
  /// The primary instance ID bound to HaVip
  final pulumi.Input<String>? masterInstanceId;
  /// The ID of the resource group to which the HAVIP belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of this resource instance.
  final pulumi.Input<String>? status;
  /// The tags of HaVip.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC ID to which the HaVip instance belongs
  final pulumi.Input<String>? vpcId;
  /// The switch ID to which the HaVip instance belongs
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [HaVipv2State].
  /// [associatedEipAddresses] EIP bound to HaVip
  /// [associatedInstanceType] The type of the instance that is bound to the HaVip. Value:
  /// [associatedInstances] The ID of the ECS instance to be associated with the HAVIP.
  /// [createTime] The creation time of the resource
  /// [description] The description of the HAVIP. The description must be 1 to 255 characters in length and cannot start with `http://` or `https://`.
  /// [haVipId] The ID of the HaVip instance.
  /// [haVipName] The name of the HAVIP. The name must be 1 to 128 characters in length, and cannot start with `http://` or `https://`.
  /// [havipName] . Field 'havip_name' has been deprecated from provider version 1.259.0. New field 'ha_vip_name' instead.
  /// [ipAddress] The IP address of the HAVIP. The specified IP address must be an idle IP address that falls within the CIDR block of the vSwitch. If this parameter is not set, an idle IP address from the CIDR block of the vSwitch is randomly assigned to the HAVIP.
  /// [masterInstanceId] The primary instance ID bound to HaVip
  /// [resourceGroupId] The ID of the resource group to which the HAVIP belongs.
  /// [status] The status of this resource instance.
  /// [tags] The tags of HaVip.
  /// [vpcId] The VPC ID to which the HaVip instance belongs
  /// [vswitchId] The switch ID to which the HaVip instance belongs
  HaVipv2State({
    this.associatedEipAddresses,
    this.associatedInstanceType,
    this.associatedInstances,
    this.createTime,
    this.description,
    this.haVipId,
    this.haVipName,
    this.havipName,
    this.ipAddress,
    this.masterInstanceId,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedEipAddresses': ?associatedEipAddresses,
      'associatedInstanceType': ?associatedInstanceType,
      'associatedInstances': ?associatedInstances,
      'createTime': ?createTime,
      'description': ?description,
      'haVipId': ?haVipId,
      'haVipName': ?haVipName,
      'havipName': ?havipName,
      'ipAddress': ?ipAddress,
      'masterInstanceId': ?masterInstanceId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory HaVipv2State.fromMap(Map<String, dynamic> map) {
    return HaVipv2State(
      associatedEipAddresses: map['associatedEipAddresses'] == null ? null : ((map['associatedEipAddresses'] as List).cast<String>()).input(),
      associatedInstanceType: map['associatedInstanceType'] == null ? null : (map['associatedInstanceType'] as String).input(),
      associatedInstances: map['associatedInstances'] == null ? null : ((map['associatedInstances'] as List).cast<String>()).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      haVipId: map['haVipId'] == null ? null : (map['haVipId'] as String).input(),
      haVipName: map['haVipName'] == null ? null : (map['haVipName'] as String).input(),
      havipName: map['havipName'] == null ? null : (map['havipName'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress'] as String).input(),
      masterInstanceId: map['masterInstanceId'] == null ? null : (map['masterInstanceId'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}


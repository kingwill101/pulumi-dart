// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HAVip resources.
class HAVipState {
  /// The elastic IP address (EIP) associated with the HAVIP.
  final pulumi.Input<List<String>>? associatedEipAddresses;
  /// The type of the instance with which the HAVIP is associated. Valid values:
  /// - `EcsInstance`: an ECS instance.
  /// - `NetworkInterface`: an ENI.
  final pulumi.Input<String>? associatedInstanceType;
  /// The ID of the instance with which the HAVIP is associated.
  final pulumi.Input<List<String>>? associatedInstances;
  /// The time when the HAVIP was created.
  final pulumi.Input<String>? createTime;
  /// The description of the HaVip instance.
  final pulumi.Input<String>? description;
  /// The ID of the HAVIP.
  final pulumi.Input<String>? haVipId;
  /// The name of the HAVIP.
  final pulumi.Input<String>? haVipName;
  /// The name of the HaVip instance.
  final pulumi.Input<String>? havipName;
  /// The ip address of the HaVip. If not filled, the default will be assigned one from the vswitch.
  final pulumi.Input<String>? ipAddress;
  /// The ID of the active instance that is associated with the HAVIP.
  final pulumi.Input<String>? masterInstanceId;
  /// The ID of the resource group to which the HAVIP belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// (Available since v1.120.0) The status of the HaVip instance.
  final pulumi.Input<String>? status;
  /// The list of tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the VPC to which the HAVIP belongs.
  final pulumi.Input<String>? vpcId;
  /// The vswitch_id of the HaVip, the field can't be changed.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [HAVipState].
  /// [associatedEipAddresses] The elastic IP address (EIP) associated with the HAVIP.
  /// [associatedInstanceType] The type of the instance with which the HAVIP is associated. Valid values:
  /// [associatedInstances] The ID of the instance with which the HAVIP is associated.
  /// [createTime] The time when the HAVIP was created.
  /// [description] The description of the HaVip instance.
  /// [haVipId] The ID of the HAVIP.
  /// [haVipName] The name of the HAVIP.
  /// [havipName] The name of the HaVip instance.
  /// [ipAddress] The ip address of the HaVip. If not filled, the default will be assigned one from the vswitch.
  /// [masterInstanceId] The ID of the active instance that is associated with the HAVIP.
  /// [resourceGroupId] The ID of the resource group to which the HAVIP belongs.
  /// [status] (Available since v1.120.0) The status of the HaVip instance.
  /// [tags] The list of tags.
  /// [vpcId] The ID of the VPC to which the HAVIP belongs.
  /// [vswitchId] The vswitch_id of the HaVip, the field can't be changed.
  const HAVipState({
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

  factory HAVipState.fromMap(Map<String, dynamic> map) {
    return HAVipState(
      associatedEipAddresses: (() { final guardedValue = map['associatedEipAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      associatedInstanceType: (() { final guardedValue = map['associatedInstanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associatedInstances: (() { final guardedValue = map['associatedInstances']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      haVipId: (() { final guardedValue = map['haVipId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      haVipName: (() { final guardedValue = map['haVipName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      havipName: (() { final guardedValue = map['havipName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      masterInstanceId: (() { final guardedValue = map['masterInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


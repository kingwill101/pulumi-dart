// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Vpd resources.
class VpdState {
  /// The CIDR block of the VPD.
  final pulumi.Input<String>? cidr;
  /// The time when the activation code was created.
  final pulumi.Input<String>? createTime;
  /// The time when the O&M task was modified.
  final pulumi.Input<String>? gmtModified;
  /// (Available since v1.263.0) The region ID.
  final pulumi.Input<String>? regionId;
  /// The Resource group ID. **NOTE:** From version 1.263.0, `resource_group_id` can be modified.
  final pulumi.Input<String>? resourceGroupId;
  /// The additional CIDR block.
  final pulumi.Input<List<String>>? secondaryCidrBlocks;
  /// The current state of the instance.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the VPD instance.
  final pulumi.Input<String>? vpdName;

  /// Creates a new [VpdState].
  /// [cidr] The CIDR block of the VPD.
  /// [createTime] The time when the activation code was created.
  /// [gmtModified] The time when the O&M task was modified.
  /// [regionId] (Available since v1.263.0) The region ID.
  /// [resourceGroupId] The Resource group ID. **NOTE:** From version 1.263.0, `resource_group_id` can be modified.
  /// [secondaryCidrBlocks] The additional CIDR block.
  /// [status] The current state of the instance.
  /// [tags] The tag of the resource.
  /// [vpdName] The name of the VPD instance.
  VpdState({
    this.cidr,
    this.createTime,
    this.gmtModified,
    this.regionId,
    this.resourceGroupId,
    this.secondaryCidrBlocks,
    this.status,
    this.tags,
    this.vpdName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'createTime': ?createTime,
      'gmtModified': ?gmtModified,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'secondaryCidrBlocks': ?secondaryCidrBlocks,
      'status': ?status,
      'tags': ?tags,
      'vpdName': ?vpdName,
    };
  }

  factory VpdState.fromMap(Map<String, dynamic> map) {
    return VpdState(
      cidr: map['cidr'] == null ? null : (map['cidr']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      gmtModified: map['gmtModified'] == null ? null : (map['gmtModified']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      secondaryCidrBlocks: map['secondaryCidrBlocks'] == null ? null : ((map['secondaryCidrBlocks']! as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vpdName: map['vpdName'] == null ? null : (map['vpdName']! as String).input(),
    );
  }
}


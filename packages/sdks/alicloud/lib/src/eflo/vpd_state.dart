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
      cidr: (() {
        final guardedValue = map['cidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gmtModified: (() {
        final guardedValue = map['gmtModified'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionId: (() {
        final guardedValue = map['regionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secondaryCidrBlocks: (() {
        final guardedValue = map['secondaryCidrBlocks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpdName: (() {
        final guardedValue = map['vpdName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

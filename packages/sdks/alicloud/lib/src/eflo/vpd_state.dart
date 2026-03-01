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
    pulumi.Output<String>? cidr,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? gmtModified,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<String>>? secondaryCidrBlocks,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpdName,
  }) :
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      gmtModified = pulumi.Input.asOptionalInput<String>(gmtModified),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      secondaryCidrBlocks = pulumi.Input.asOptionalInput<List<String>>(secondaryCidrBlocks),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpdName = pulumi.Input.asOptionalInput<String>(vpdName);

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
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      gmtModified: map['gmtModified'] == null ? null : pulumi.Output.create<String>(map['gmtModified'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      secondaryCidrBlocks: map['secondaryCidrBlocks'] == null ? null : pulumi.Output.create<List<String>>((map['secondaryCidrBlocks'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpdName: map['vpdName'] == null ? null : pulumi.Output.create<String>(map['vpdName'] as String),
    );
  }
}


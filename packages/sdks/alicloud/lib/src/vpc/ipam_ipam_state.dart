// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IpamIpam resources.
class IpamIpamState {
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// The description of IPAM.
  /// It must be 2 to 256 characters in length and must start with an uppercase letter or a Chinese character, but cannot start with 'http: // 'or 'https. If the description is not filled in, it is blank. The default value is blank.
  final pulumi.Input<String>? ipamDescription;
  /// The name of the resource.
  final pulumi.Input<String>? ipamName;
  /// List of IPAM effective regions.
  final pulumi.Input<List<String>>? operatingRegionLists;
  /// After an IPAM is created, the scope of the private network IPAM created by the system by default.
  final pulumi.Input<String>? privateDefaultScopeId;
  /// The region ID of the resource.
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpamIpamState].
  /// [createTime] The creation time of the resource.
  /// [ipamDescription] The description of IPAM.
  /// [ipamName] The name of the resource.
  /// [operatingRegionLists] List of IPAM effective regions.
  /// [privateDefaultScopeId] After an IPAM is created, the scope of the private network IPAM created by the system by default.
  /// [regionId] The region ID of the resource.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the resource.
  /// [tags] The tag of the resource.
  IpamIpamState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? ipamDescription,
    pulumi.Output<String>? ipamName,
    pulumi.Output<List<String>>? operatingRegionLists,
    pulumi.Output<String>? privateDefaultScopeId,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      ipamDescription = pulumi.Input.asOptionalInput<String>(ipamDescription),
      ipamName = pulumi.Input.asOptionalInput<String>(ipamName),
      operatingRegionLists = pulumi.Input.asOptionalInput<List<String>>(operatingRegionLists),
      privateDefaultScopeId = pulumi.Input.asOptionalInput<String>(privateDefaultScopeId),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'ipamDescription': ?ipamDescription,
      'ipamName': ?ipamName,
      'operatingRegionLists': ?operatingRegionLists,
      'privateDefaultScopeId': ?privateDefaultScopeId,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory IpamIpamState.fromMap(Map<String, dynamic> map) {
    return IpamIpamState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      ipamDescription: map['ipamDescription'] == null ? null : pulumi.Output.create<String>(map['ipamDescription'] as String),
      ipamName: map['ipamName'] == null ? null : pulumi.Output.create<String>(map['ipamName'] as String),
      operatingRegionLists: map['operatingRegionLists'] == null ? null : pulumi.Output.create<List<String>>((map['operatingRegionLists'] as List).cast<String>()),
      privateDefaultScopeId: map['privateDefaultScopeId'] == null ? null : pulumi.Output.create<String>(map['privateDefaultScopeId'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


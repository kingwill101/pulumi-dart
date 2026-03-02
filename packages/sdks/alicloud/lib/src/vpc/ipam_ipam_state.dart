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
    this.createTime,
    this.ipamDescription,
    this.ipamName,
    this.operatingRegionLists,
    this.privateDefaultScopeId,
    this.regionId,
    this.resourceGroupId,
    this.status,
    this.tags,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      ipamDescription: map['ipamDescription'] == null ? null : (map['ipamDescription']! as String).input(),
      ipamName: map['ipamName'] == null ? null : (map['ipamName']! as String).input(),
      operatingRegionLists: map['operatingRegionLists'] == null ? null : ((map['operatingRegionLists']! as List).cast<String>()).input(),
      privateDefaultScopeId: map['privateDefaultScopeId'] == null ? null : (map['privateDefaultScopeId']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}


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
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipamDescription: (() {
        final guardedValue = map['ipamDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipamName: (() {
        final guardedValue = map['ipamName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      operatingRegionLists: (() {
        final guardedValue = map['operatingRegionLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      privateDefaultScopeId: (() {
        final guardedValue = map['privateDefaultScopeId'];
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
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IpamIpamScope resources.
class IpamIpamScopeState {
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// The id of the Ipam instance.
  final pulumi.Input<String>? ipamId;
  /// The description of the IPAM's scope of action.
  /// It must be 2 to 256 characters in length and must start with a lowercase letter, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  final pulumi.Input<String>? ipamScopeDescription;
  /// The name of the resource.
  final pulumi.Input<String>? ipamScopeName;
  /// IPAM scope of action type:
  /// `private`.
  ///
  ///
  /// > **NOTE:**  Currently, only the role scope of the private network is supported.
  final pulumi.Input<String>? ipamScopeType;
  /// The region ID of the resource.
  final pulumi.Input<String>? regionId;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IpamIpamScopeState].
  /// [createTime] The creation time of the resource.
  /// [ipamId] The id of the Ipam instance.
  /// [ipamScopeDescription] The description of the IPAM's scope of action.
  /// [ipamScopeName] The name of the resource.
  /// [ipamScopeType] IPAM scope of action type:
  /// [regionId] The region ID of the resource.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the resource.
  /// [tags] The tag of the resource.
  IpamIpamScopeState({
    this.createTime,
    this.ipamId,
    this.ipamScopeDescription,
    this.ipamScopeName,
    this.ipamScopeType,
    this.regionId,
    this.resourceGroupId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'ipamId': ?ipamId,
      'ipamScopeDescription': ?ipamScopeDescription,
      'ipamScopeName': ?ipamScopeName,
      'ipamScopeType': ?ipamScopeType,
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory IpamIpamScopeState.fromMap(Map<String, dynamic> map) {
    return IpamIpamScopeState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      ipamId: map['ipamId'] == null ? null : (map['ipamId']! as String).input(),
      ipamScopeDescription: map['ipamScopeDescription'] == null ? null : (map['ipamScopeDescription']! as String).input(),
      ipamScopeName: map['ipamScopeName'] == null ? null : (map['ipamScopeName']! as String).input(),
      ipamScopeType: map['ipamScopeType'] == null ? null : (map['ipamScopeType']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}


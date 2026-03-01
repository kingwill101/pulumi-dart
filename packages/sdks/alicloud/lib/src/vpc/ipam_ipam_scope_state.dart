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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? ipamId,
    pulumi.Output<String>? ipamScopeDescription,
    pulumi.Output<String>? ipamScopeName,
    pulumi.Output<String>? ipamScopeType,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      ipamId = pulumi.Input.asOptionalInput<String>(ipamId),
      ipamScopeDescription = pulumi.Input.asOptionalInput<String>(ipamScopeDescription),
      ipamScopeName = pulumi.Input.asOptionalInput<String>(ipamScopeName),
      ipamScopeType = pulumi.Input.asOptionalInput<String>(ipamScopeType),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      ipamId: map['ipamId'] == null ? null : pulumi.Output.create<String>(map['ipamId'] as String),
      ipamScopeDescription: map['ipamScopeDescription'] == null ? null : pulumi.Output.create<String>(map['ipamScopeDescription'] as String),
      ipamScopeName: map['ipamScopeName'] == null ? null : pulumi.Output.create<String>(map['ipamScopeName'] as String),
      ipamScopeType: map['ipamScopeType'] == null ? null : pulumi.Output.create<String>(map['ipamScopeType'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIpamIpamScopesScope {
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;
  /// The id of the Ipam instance.
  final pulumi.Input<String> ipamId;
  /// The description of the IPAM's scope of action.It must be 2 to 256 characters in length and must start with a lowercase letter, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  final pulumi.Input<String> ipamScopeDescription;
  /// The first ID of the resource.
  final pulumi.Input<String> ipamScopeId;
  /// The name of the resource.
  final pulumi.Input<String> ipamScopeName;
  /// IPAM scope of action type:**private**.&gt; Currently, only the role scope of the private network is supported.
  final pulumi.Input<String> ipamScopeType;
  /// The region ID of the resource.
  final pulumi.Input<String> regionId;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The status of the resource.
  final pulumi.Input<String> status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [GetIpamIpamScopesScope].
  /// [createTime] The creation time of the resource.
  /// [id] The ID of the resource supplied above.
  /// [ipamId] The id of the Ipam instance.
  /// [ipamScopeDescription] The description of the IPAM's scope of action.It must be 2 to 256 characters in length and must start with a lowercase letter, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  /// [ipamScopeId] The first ID of the resource.
  /// [ipamScopeName] The name of the resource.
  /// [ipamScopeType] IPAM scope of action type:**private**.&gt; Currently, only the role scope of the private network is supported.
  /// [regionId] The region ID of the resource.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the resource.
  /// [tags] The tag of the resource.
  const GetIpamIpamScopesScope({
    required this.createTime,
    required this.id,
    required this.ipamId,
    required this.ipamScopeDescription,
    required this.ipamScopeId,
    required this.ipamScopeName,
    required this.ipamScopeType,
    required this.regionId,
    required this.resourceGroupId,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'id': id,
      'ipamId': ipamId,
      'ipamScopeDescription': ipamScopeDescription,
      'ipamScopeId': ipamScopeId,
      'ipamScopeName': ipamScopeName,
      'ipamScopeType': ipamScopeType,
      'regionId': regionId,
      'resourceGroupId': resourceGroupId,
      'status': status,
      'tags': tags,
    };
  }

  factory GetIpamIpamScopesScope.fromMap(Map<String, dynamic> map) {
    return GetIpamIpamScopesScope(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      ipamId: pulumi.Input.fromValue(map['ipamId'] as String),
      ipamScopeDescription: pulumi.Input.fromValue(map['ipamScopeDescription'] as String),
      ipamScopeId: pulumi.Input.fromValue(map['ipamScopeId'] as String),
      ipamScopeName: pulumi.Input.fromValue(map['ipamScopeName'] as String),
      ipamScopeType: pulumi.Input.fromValue(map['ipamScopeType'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}


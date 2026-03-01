// ignore_for_file: unused_element, unnecessary_cast


class GetIpamIpamScopesScope {
  /// The creation time of the resource.
  final String createTime;
  /// The ID of the resource supplied above.
  final String id;
  /// The id of the Ipam instance.
  final String ipamId;
  /// The description of the IPAM's scope of action.It must be 2 to 256 characters in length and must start with a lowercase letter, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  final String ipamScopeDescription;
  /// The first ID of the resource.
  final String ipamScopeId;
  /// The name of the resource.
  final String ipamScopeName;
  /// IPAM scope of action type:**private**.> Currently, only the role scope of the private network is supported.
  final String ipamScopeType;
  /// The region ID of the resource.
  final String regionId;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The status of the resource.
  final String status;
  /// The tag of the resource.
  final Map<String, String> tags;

  /// Creates a new [GetIpamIpamScopesScope].
  /// [createTime] The creation time of the resource.
  /// [id] The ID of the resource supplied above.
  /// [ipamId] The id of the Ipam instance.
  /// [ipamScopeDescription] The description of the IPAM's scope of action.It must be 2 to 256 characters in length and must start with a lowercase letter, but cannot start with 'http:// 'or 'https. If it is not filled in, it is empty. The default value is empty.
  /// [ipamScopeId] The first ID of the resource.
  /// [ipamScopeName] The name of the resource.
  /// [ipamScopeType] IPAM scope of action type:**private**.> Currently, only the role scope of the private network is supported.
  /// [regionId] The region ID of the resource.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the resource.
  /// [tags] The tag of the resource.
  GetIpamIpamScopesScope({
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
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      ipamId: map['ipamId'] as String,
      ipamScopeDescription: map['ipamScopeDescription'] as String,
      ipamScopeId: map['ipamScopeId'] as String,
      ipamScopeName: map['ipamScopeName'] as String,
      ipamScopeType: map['ipamScopeType'] as String,
      regionId: map['regionId'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class GetBastionHostInstancesInstance {
  final String bandwidth;
  final String description;
  final String id;
  final String instanceStatus;
  final String licenseCode;
  final String privateDomain;
  final String publicDomain;
  final bool publicNetworkAccess;
  final List<String> securityGroupIds;
  final String storage;
  final Map<String, String> tags;
  final String userVswitchId;

  /// Creates a new [GetBastionHostInstancesInstance].
  /// [bandwidth] Required.
  /// [description] Required.
  /// [id] Required.
  /// [instanceStatus] Required.
  /// [licenseCode] Required.
  /// [privateDomain] Required.
  /// [publicDomain] Required.
  /// [publicNetworkAccess] Required.
  /// [securityGroupIds] Required.
  /// [storage] Required.
  /// [tags] Required.
  /// [userVswitchId] Required.
  GetBastionHostInstancesInstance({
    required this.bandwidth,
    required this.description,
    required this.id,
    required this.instanceStatus,
    required this.licenseCode,
    required this.privateDomain,
    required this.publicDomain,
    required this.publicNetworkAccess,
    required this.securityGroupIds,
    required this.storage,
    required this.tags,
    required this.userVswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'description': description,
      'id': id,
      'instanceStatus': instanceStatus,
      'licenseCode': licenseCode,
      'privateDomain': privateDomain,
      'publicDomain': publicDomain,
      'publicNetworkAccess': publicNetworkAccess,
      'securityGroupIds': securityGroupIds,
      'storage': storage,
      'tags': tags,
      'userVswitchId': userVswitchId,
    };
  }

  factory GetBastionHostInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetBastionHostInstancesInstance(
      bandwidth: map['bandwidth'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      instanceStatus: map['instanceStatus'] as String,
      licenseCode: map['licenseCode'] as String,
      privateDomain: map['privateDomain'] as String,
      publicDomain: map['publicDomain'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] as bool,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      storage: map['storage'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      userVswitchId: map['userVswitchId'] as String,
    );
  }
}


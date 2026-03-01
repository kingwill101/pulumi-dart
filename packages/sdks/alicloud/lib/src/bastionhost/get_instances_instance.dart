// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstance {
  /// The bandwidth of Cloud Bastionhost instance.
  final String bandwidth;
  /// The instance's remark.
  final String description;
  /// The instance's id.
  final String id;
  /// The instance's status.
  final String instanceStatus;
  /// The instance's license code.
  final String licenseCode;
  /// The instance's private domain name.
  final String privateDomain;
  /// The instance's public domain name.
  final String publicDomain;
  /// The instance's public network access configuration.
  final bool publicNetworkAccess;
  /// The instance's security group configuration.
  final List<String> securityGroupIds;
  /// The storage of Cloud Bastionhost instance in TB.
  final String storage;
  /// A map of tags assigned to the bastionhost instance.
  final Map<String, String> tags;
  /// The instance's vSwitch ID.
  final String userVswitchId;

  /// Creates a new [GetInstancesInstance].
  /// [bandwidth] The bandwidth of Cloud Bastionhost instance.
  /// [description] The instance's remark.
  /// [id] The instance's id.
  /// [instanceStatus] The instance's status.
  /// [licenseCode] The instance's license code.
  /// [privateDomain] The instance's private domain name.
  /// [publicDomain] The instance's public domain name.
  /// [publicNetworkAccess] The instance's public network access configuration.
  /// [securityGroupIds] The instance's security group configuration.
  /// [storage] The storage of Cloud Bastionhost instance in TB.
  /// [tags] A map of tags assigned to the bastionhost instance.
  /// [userVswitchId] The instance's vSwitch ID.
  GetInstancesInstance({
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

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
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


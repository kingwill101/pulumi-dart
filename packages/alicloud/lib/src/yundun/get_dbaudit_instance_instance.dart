// ignore_for_file: unused_element, unnecessary_cast


class GetDBAuditInstanceInstance {
  final String description;
  final String id;
  final String instanceStatus;
  final String licenseCode;
  final String privateDomain;
  final String publicDomain;
  final bool publicNetworkAccess;
  final Map<String, String>? tags;
  final String userVswitchId;

  /// Creates a new [GetDBAuditInstanceInstance].
  /// [description] Required.
  /// [id] Required.
  /// [instanceStatus] Required.
  /// [licenseCode] Required.
  /// [privateDomain] Required.
  /// [publicDomain] Required.
  /// [publicNetworkAccess] Required.
  /// [tags] Optional.
  /// [userVswitchId] Required.
  GetDBAuditInstanceInstance({
    required this.description,
    required this.id,
    required this.instanceStatus,
    required this.licenseCode,
    required this.privateDomain,
    required this.publicDomain,
    required this.publicNetworkAccess,
    this.tags,
    required this.userVswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'instanceStatus': instanceStatus,
      'licenseCode': licenseCode,
      'privateDomain': privateDomain,
      'publicDomain': publicDomain,
      'publicNetworkAccess': publicNetworkAccess,
      'tags': ?tags,
      'userVswitchId': userVswitchId,
    };
  }

  factory GetDBAuditInstanceInstance.fromMap(Map<String, dynamic> map) {
    return GetDBAuditInstanceInstance(
      description: map['description'] as String,
      id: map['id'] as String,
      instanceStatus: map['instanceStatus'] as String,
      licenseCode: map['licenseCode'] as String,
      privateDomain: map['privateDomain'] as String,
      publicDomain: map['publicDomain'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      userVswitchId: map['userVswitchId'] as String,
    );
  }
}


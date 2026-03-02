// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDBAuditInstanceInstance {
  final pulumi.Input<String> description;
  final pulumi.Input<String> id;
  final pulumi.Input<String> instanceStatus;
  final pulumi.Input<String> licenseCode;
  final pulumi.Input<String> privateDomain;
  final pulumi.Input<String> publicDomain;
  final pulumi.Input<bool> publicNetworkAccess;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String> userVswitchId;

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
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      instanceStatus: (map['instanceStatus'] as String).input(),
      licenseCode: (map['licenseCode'] as String).input(),
      privateDomain: (map['privateDomain'] as String).input(),
      publicDomain: (map['publicDomain'] as String).input(),
      publicNetworkAccess: (map['publicNetworkAccess'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      userVswitchId: (map['userVswitchId'] as String).input(),
    );
  }
}


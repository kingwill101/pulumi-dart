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
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceStatus: pulumi.Input.fromValue(map['instanceStatus'] as String),
      licenseCode: pulumi.Input.fromValue(map['licenseCode'] as String),
      privateDomain: pulumi.Input.fromValue(map['privateDomain'] as String),
      publicDomain: pulumi.Input.fromValue(map['publicDomain'] as String),
      publicNetworkAccess: pulumi.Input.fromValue(
        map['publicNetworkAccess'] as bool,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      userVswitchId: pulumi.Input.fromValue(map['userVswitchId'] as String),
    );
  }
}

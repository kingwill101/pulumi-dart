// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBastionHostInstancesInstance {
  final pulumi.Input<String> bandwidth;
  final pulumi.Input<String> description;
  final pulumi.Input<String> id;
  final pulumi.Input<String> instanceStatus;
  final pulumi.Input<String> licenseCode;
  final pulumi.Input<String> privateDomain;
  final pulumi.Input<String> publicDomain;
  final pulumi.Input<bool> publicNetworkAccess;
  final pulumi.Input<List<String>> securityGroupIds;
  final pulumi.Input<String> storage;
  final pulumi.Input<Map<String, String>> tags;
  final pulumi.Input<String> userVswitchId;

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
  const GetBastionHostInstancesInstance({
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
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceStatus: pulumi.Input.fromValue(map['instanceStatus'] as String),
      licenseCode: pulumi.Input.fromValue(map['licenseCode'] as String),
      privateDomain: pulumi.Input.fromValue(map['privateDomain'] as String),
      publicDomain: pulumi.Input.fromValue(map['publicDomain'] as String),
      publicNetworkAccess: pulumi.Input.fromValue(map['publicNetworkAccess'] as bool),
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      storage: pulumi.Input.fromValue(map['storage'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      userVswitchId: pulumi.Input.fromValue(map['userVswitchId'] as String),
    );
  }
}


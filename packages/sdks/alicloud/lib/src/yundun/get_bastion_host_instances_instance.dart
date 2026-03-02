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
      bandwidth: (map['bandwidth'] as String).input(),
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      instanceStatus: (map['instanceStatus'] as String).input(),
      licenseCode: (map['licenseCode'] as String).input(),
      privateDomain: (map['privateDomain'] as String).input(),
      publicDomain: (map['publicDomain'] as String).input(),
      publicNetworkAccess: (map['publicNetworkAccess'] as bool).input(),
      securityGroupIds: ((map['securityGroupIds'] as List).cast<String>()).input(),
      storage: (map['storage'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      userVswitchId: (map['userVswitchId'] as String).input(),
    );
  }
}


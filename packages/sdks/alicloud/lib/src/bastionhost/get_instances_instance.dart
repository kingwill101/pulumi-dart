// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstancesInstance {
  /// The bandwidth of Cloud Bastionhost instance.
  final pulumi.Input<String> bandwidth;
  /// The instance's remark.
  final pulumi.Input<String> description;
  /// The instance's id.
  final pulumi.Input<String> id;
  /// The instance's status.
  final pulumi.Input<String> instanceStatus;
  /// The instance's license code.
  final pulumi.Input<String> licenseCode;
  /// The instance's private domain name.
  final pulumi.Input<String> privateDomain;
  /// The instance's public domain name.
  final pulumi.Input<String> publicDomain;
  /// The instance's public network access configuration.
  final pulumi.Input<bool> publicNetworkAccess;
  /// The instance's security group configuration.
  final pulumi.Input<List<String>> securityGroupIds;
  /// The storage of Cloud Bastionhost instance in TB.
  final pulumi.Input<String> storage;
  /// A map of tags assigned to the bastionhost instance.
  final pulumi.Input<Map<String, String>> tags;
  /// The instance's vSwitch ID.
  final pulumi.Input<String> userVswitchId;

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


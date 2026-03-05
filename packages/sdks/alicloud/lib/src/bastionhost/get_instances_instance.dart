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


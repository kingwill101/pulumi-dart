// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bastion_host_instance_ad_auth_server.dart';
import 'bastion_host_instance_ldap_auth_server.dart';

/// Input properties used for looking up and filtering BastionHostInstance resources.
class BastionHostInstanceState {
  final pulumi.Input<List<BastionHostInstanceAdAuthServer>>? adAuthServers;
  final pulumi.Input<String>? bandwidth;
  final pulumi.Input<String>? description;
  final pulumi.Input<bool>? enablePublicAccess;
  final pulumi.Input<List<BastionHostInstanceLdapAuthServer>>? ldapAuthServers;
  final pulumi.Input<String>? licenseCode;
  final pulumi.Input<int>? period;
  final pulumi.Input<String>? planCode;
  final pulumi.Input<List<String>>? publicWhiteLists;
  final pulumi.Input<int>? renewPeriod;
  final pulumi.Input<String>? renewalPeriodUnit;
  final pulumi.Input<String>? renewalStatus;
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<List<String>>? securityGroupIds;
  final pulumi.Input<String>? slaveVswitchId;
  final pulumi.Input<String>? storage;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [BastionHostInstanceState].
  /// [adAuthServers] Optional.
  /// [bandwidth] Optional.
  /// [description] Optional.
  /// [enablePublicAccess] Optional.
  /// [ldapAuthServers] Optional.
  /// [licenseCode] Optional.
  /// [period] Optional.
  /// [planCode] Optional.
  /// [publicWhiteLists] Optional.
  /// [renewPeriod] Optional.
  /// [renewalPeriodUnit] Optional.
  /// [renewalStatus] Optional.
  /// [resourceGroupId] Optional.
  /// [securityGroupIds] Optional.
  /// [slaveVswitchId] Optional.
  /// [storage] Optional.
  /// [tags] Optional.
  /// [vswitchId] Optional.
  BastionHostInstanceState({
    this.adAuthServers,
    this.bandwidth,
    this.description,
    this.enablePublicAccess,
    this.ldapAuthServers,
    this.licenseCode,
    this.period,
    this.planCode,
    this.publicWhiteLists,
    this.renewPeriod,
    this.renewalPeriodUnit,
    this.renewalStatus,
    this.resourceGroupId,
    this.securityGroupIds,
    this.slaveVswitchId,
    this.storage,
    this.tags,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adAuthServers': ?pulumi.Input.mapOptionalInputValue<List<BastionHostInstanceAdAuthServer>, List<Map<String, dynamic>>>(adAuthServers, (value) => pulumi.Input.encodeList<BastionHostInstanceAdAuthServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bandwidth': ?bandwidth,
      'description': ?description,
      'enablePublicAccess': ?enablePublicAccess,
      'ldapAuthServers': ?pulumi.Input.mapOptionalInputValue<List<BastionHostInstanceLdapAuthServer>, List<Map<String, dynamic>>>(ldapAuthServers, (value) => pulumi.Input.encodeList<BastionHostInstanceLdapAuthServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'licenseCode': ?licenseCode,
      'period': ?period,
      'planCode': ?planCode,
      'publicWhiteLists': ?publicWhiteLists,
      'renewPeriod': ?renewPeriod,
      'renewalPeriodUnit': ?renewalPeriodUnit,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupIds': ?securityGroupIds,
      'slaveVswitchId': ?slaveVswitchId,
      'storage': ?storage,
      'tags': ?tags,
      'vswitchId': ?vswitchId,
    };
  }

  factory BastionHostInstanceState.fromMap(Map<String, dynamic> map) {
    return BastionHostInstanceState(
      adAuthServers: map['adAuthServers'] == null ? null : (pulumi.Input.decodeList<BastionHostInstanceAdAuthServer>(map['adAuthServers']!, (value) => BastionHostInstanceAdAuthServer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      enablePublicAccess: map['enablePublicAccess'] == null ? null : (map['enablePublicAccess']! as bool).input(),
      ldapAuthServers: map['ldapAuthServers'] == null ? null : (pulumi.Input.decodeList<BastionHostInstanceLdapAuthServer>(map['ldapAuthServers']!, (value) => BastionHostInstanceLdapAuthServer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      licenseCode: map['licenseCode'] == null ? null : (map['licenseCode']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      planCode: map['planCode'] == null ? null : (map['planCode']! as String).input(),
      publicWhiteLists: map['publicWhiteLists'] == null ? null : ((map['publicWhiteLists']! as List).cast<String>()).input(),
      renewPeriod: map['renewPeriod'] == null ? null : (map['renewPeriod']! as int).input(),
      renewalPeriodUnit: map['renewalPeriodUnit'] == null ? null : (map['renewalPeriodUnit']! as String).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds']! as List).cast<String>()).input(),
      slaveVswitchId: map['slaveVswitchId'] == null ? null : (map['slaveVswitchId']! as String).input(),
      storage: map['storage'] == null ? null : (map['storage']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}


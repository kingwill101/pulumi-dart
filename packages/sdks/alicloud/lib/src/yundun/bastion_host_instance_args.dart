// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bastion_host_instance_ad_auth_server.dart';
import 'bastion_host_instance_ldap_auth_server.dart';

/// {@template pulumi_yundun_bastion_host_instance_bastion_host_instance_args_doc}
/// The set of arguments for BastionHostInstance.
/// {@endtemplate}
/// {@macro pulumi_yundun_bastion_host_instance_bastion_host_instance_args_doc}
class BastionHostInstanceArgs {
  final pulumi.Input<List<BastionHostInstanceAdAuthServer>>? adAuthServers;
  final pulumi.Input<String> bandwidth;
  final pulumi.Input<String> description;
  final pulumi.Input<bool>? enablePublicAccess;
  final pulumi.Input<List<BastionHostInstanceLdapAuthServer>>? ldapAuthServers;
  final pulumi.Input<String> licenseCode;
  final pulumi.Input<int>? period;
  final pulumi.Input<String> planCode;
  final pulumi.Input<List<String>>? publicWhiteLists;
  final pulumi.Input<int>? renewPeriod;
  final pulumi.Input<String>? renewalPeriodUnit;
  final pulumi.Input<String>? renewalStatus;
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<List<String>> securityGroupIds;
  final pulumi.Input<String>? slaveVswitchId;
  final pulumi.Input<String> storage;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<String> vswitchId;

  /// Creates a new [BastionHostInstanceArgs].
  /// [adAuthServers] Optional.
  /// [bandwidth] Required.
  /// [description] Required.
  /// [enablePublicAccess] Optional.
  /// [ldapAuthServers] Optional.
  /// [licenseCode] Required.
  /// [period] Optional.
  /// [planCode] Required.
  /// [publicWhiteLists] Optional.
  /// [renewPeriod] Optional.
  /// [renewalPeriodUnit] Optional.
  /// [renewalStatus] Optional.
  /// [resourceGroupId] Optional.
  /// [securityGroupIds] Required.
  /// [slaveVswitchId] Optional.
  /// [storage] Required.
  /// [tags] Optional.
  /// [vswitchId] Required.
  BastionHostInstanceArgs({
    this.adAuthServers,
    required this.bandwidth,
    required this.description,
    this.enablePublicAccess,
    this.ldapAuthServers,
    required this.licenseCode,
    this.period,
    required this.planCode,
    this.publicWhiteLists,
    this.renewPeriod,
    this.renewalPeriodUnit,
    this.renewalStatus,
    this.resourceGroupId,
    required this.securityGroupIds,
    this.slaveVswitchId,
    required this.storage,
    this.tags,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adAuthServers': ?pulumi.Input.mapOptionalInputValue<List<BastionHostInstanceAdAuthServer>, List<Map<String, dynamic>>>(adAuthServers, (value) => pulumi.Input.encodeList<BastionHostInstanceAdAuthServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bandwidth': bandwidth,
      'description': description,
      'enablePublicAccess': ?enablePublicAccess,
      'ldapAuthServers': ?pulumi.Input.mapOptionalInputValue<List<BastionHostInstanceLdapAuthServer>, List<Map<String, dynamic>>>(ldapAuthServers, (value) => pulumi.Input.encodeList<BastionHostInstanceLdapAuthServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'licenseCode': licenseCode,
      'period': ?period,
      'planCode': planCode,
      'publicWhiteLists': ?publicWhiteLists,
      'renewPeriod': ?renewPeriod,
      'renewalPeriodUnit': ?renewalPeriodUnit,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'securityGroupIds': securityGroupIds,
      'slaveVswitchId': ?slaveVswitchId,
      'storage': storage,
      'tags': ?tags,
      'vswitchId': vswitchId,
    };
  }

  factory BastionHostInstanceArgs.fromMap(Map<String, dynamic> map) {
    return BastionHostInstanceArgs(
      adAuthServers: (() { final guardedValue = map['adAuthServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BastionHostInstanceAdAuthServer>(guardedValue, (value) => BastionHostInstanceAdAuthServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      enablePublicAccess: (() { final guardedValue = map['enablePublicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ldapAuthServers: (() { final guardedValue = map['ldapAuthServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BastionHostInstanceLdapAuthServer>(guardedValue, (value) => BastionHostInstanceLdapAuthServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      licenseCode: pulumi.Input.fromValue(map['licenseCode'] as String),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      planCode: pulumi.Input.fromValue(map['planCode'] as String),
      publicWhiteLists: (() { final guardedValue = map['publicWhiteLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      renewPeriod: (() { final guardedValue = map['renewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      renewalPeriodUnit: (() { final guardedValue = map['renewalPeriodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalStatus: (() { final guardedValue = map['renewalStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: pulumi.Input.fromValue((map['securityGroupIds'] as List).cast<String>()),
      slaveVswitchId: (() { final guardedValue = map['slaveVswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storage: pulumi.Input.fromValue(map['storage'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
    );
  }
}


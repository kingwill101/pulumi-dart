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
  const BastionHostInstanceState({
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
      adAuthServers: (() { final guardedValue = map['adAuthServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BastionHostInstanceAdAuthServer>(guardedValue, (value) => BastionHostInstanceAdAuthServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablePublicAccess: (() { final guardedValue = map['enablePublicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ldapAuthServers: (() { final guardedValue = map['ldapAuthServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BastionHostInstanceLdapAuthServer>(guardedValue, (value) => BastionHostInstanceLdapAuthServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      licenseCode: (() { final guardedValue = map['licenseCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      planCode: (() { final guardedValue = map['planCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicWhiteLists: (() { final guardedValue = map['publicWhiteLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      renewPeriod: (() { final guardedValue = map['renewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      renewalPeriodUnit: (() { final guardedValue = map['renewalPeriodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalStatus: (() { final guardedValue = map['renewalStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      slaveVswitchId: (() { final guardedValue = map['slaveVswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


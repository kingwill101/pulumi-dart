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
    List<BastionHostInstanceAdAuthServer>? adAuthServers,
    required String bandwidth,
    required String description,
    bool? enablePublicAccess,
    List<BastionHostInstanceLdapAuthServer>? ldapAuthServers,
    required String licenseCode,
    int? period,
    required String planCode,
    List<String>? publicWhiteLists,
    int? renewPeriod,
    String? renewalPeriodUnit,
    String? renewalStatus,
    String? resourceGroupId,
    required List<String> securityGroupIds,
    String? slaveVswitchId,
    required String storage,
    Map<String, String>? tags,
    required String vswitchId,
  }) :
      adAuthServers = pulumi.Input.asOptionalInput<List<BastionHostInstanceAdAuthServer>>(adAuthServers),
      bandwidth = pulumi.Input.asInput<String>(bandwidth),
      description = pulumi.Input.asInput<String>(description),
      enablePublicAccess = pulumi.Input.asOptionalInput<bool>(enablePublicAccess),
      ldapAuthServers = pulumi.Input.asOptionalInput<List<BastionHostInstanceLdapAuthServer>>(ldapAuthServers),
      licenseCode = pulumi.Input.asInput<String>(licenseCode),
      period = pulumi.Input.asOptionalInput<int>(period),
      planCode = pulumi.Input.asInput<String>(planCode),
      publicWhiteLists = pulumi.Input.asOptionalInput<List<String>>(publicWhiteLists),
      renewPeriod = pulumi.Input.asOptionalInput<int>(renewPeriod),
      renewalPeriodUnit = pulumi.Input.asOptionalInput<String>(renewalPeriodUnit),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityGroupIds = pulumi.Input.asInput<List<String>>(securityGroupIds),
      slaveVswitchId = pulumi.Input.asOptionalInput<String>(slaveVswitchId),
      storage = pulumi.Input.asInput<String>(storage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

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
      adAuthServers: map['adAuthServers'] == null ? null : pulumi.Input.decodeList<BastionHostInstanceAdAuthServer>(map['adAuthServers'], (value) => BastionHostInstanceAdAuthServer.fromMap((value as Map).cast<String, dynamic>())),
      bandwidth: map['bandwidth'] as String,
      description: map['description'] as String,
      enablePublicAccess: map['enablePublicAccess'] == null ? null : map['enablePublicAccess'] as bool,
      ldapAuthServers: map['ldapAuthServers'] == null ? null : pulumi.Input.decodeList<BastionHostInstanceLdapAuthServer>(map['ldapAuthServers'], (value) => BastionHostInstanceLdapAuthServer.fromMap((value as Map).cast<String, dynamic>())),
      licenseCode: map['licenseCode'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      planCode: map['planCode'] as String,
      publicWhiteLists: map['publicWhiteLists'] == null ? null : (map['publicWhiteLists'] as List).cast<String>(),
      renewPeriod: map['renewPeriod'] == null ? null : map['renewPeriod'] as int,
      renewalPeriodUnit: map['renewalPeriodUnit'] == null ? null : map['renewalPeriodUnit'] as String,
      renewalStatus: map['renewalStatus'] == null ? null : map['renewalStatus'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      slaveVswitchId: map['slaveVswitchId'] == null ? null : map['slaveVswitchId'] as String,
      storage: map['storage'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vswitchId: map['vswitchId'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_ad_auth_server.dart';
import 'instance_ldap_auth_server.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// The AD auth server of the Instance. See `ad_auth_server` below.
  final pulumi.Input<List<InstanceAdAuthServer>>? adAuthServers;
  /// The bandwidth of Cloud Bastionhost instance. **NOTE:** From version 1.263.0, `bandwidth` can be modified.
  /// If China-Site Account, its valid values: 0 to 150. Unit: Mbit/s. The value must be a multiple of 5.
  /// If International-Site Account, its valid values: 0 to 200. Unit: Mbit/s. The value must be a multiple of 10.
  final pulumi.Input<String>? bandwidth;
  /// Description of the instance. This name can have a string of 1 to 63 characters.
  final pulumi.Input<String>? description;
  /// Whether to Enable the public internet access to a specified Bastionhost instance. The valid values: `true`, `false`.
  final pulumi.Input<bool>? enablePublicAccess;
  /// The LDAP auth server of the Instance. See `ldap_auth_server` below.
  final pulumi.Input<List<InstanceLdapAuthServer>>? ldapAuthServers;
  /// The package type of Cloud Bastionhost instance. You can query more supported types through the [DescribePricingModule](https://help.aliyun.com/document_detail/96469.html).
  final pulumi.Input<String>? licenseCode;
  /// Duration for initially producing the instance. Valid values: [1~9], 12, 24, 36. At present, the provider does not support modify "period".
  /// &gt; **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  final pulumi.Input<int>? period;
  /// The plan code of Cloud Bastionhost instance. Valid values:
  final pulumi.Input<String>? planCode;
  final pulumi.Input<List<String>>? publicWhiteLists;
  /// Automatic renewal period. Valid values: `1` to `9`, `12`, `24`, `36`. **NOTE:** The `renew_period` is required under the condition that `renewal_status` is `AutoRenewal`. From version 1.193.0, `renew_period` can be modified.
  final pulumi.Input<int>? renewPeriod;
  /// The unit of the auto-renewal period. Valid values:  **NOTE:** The `renewal_period_unit` is required under the condition that `renewal_status` is `AutoRenewal`.
  /// - `M`: months.
  /// - `Y`: years.
  final pulumi.Input<String>? renewalPeriodUnit;
  /// Automatic renewal status. Valid values: `AutoRenewal`, `ManualRenewal`, `NotRenewal`. From version 1.193.0, `renewal_status` can be modified.
  final pulumi.Input<String>? renewalStatus;
  /// The Id of resource group which the Bastionhost Instance belongs. If not set, the resource is created in the default resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// security group IDs configured to Bastionhost.
  /// **NOTE:** There is a potential diff error because of the order of `security_group_ids` values indefinite.
  /// So, from version 1.160.0, `security_group_ids` type has been updated as `set` from `list`,
  /// and you can use tolist to convert it to a list.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Slave VSwitch ID configured to Bastionhost.
  final pulumi.Input<String>? slaveVswitchId;
  /// The storage of Cloud Bastionhost instance. Valid values: `0` to `500`. Unit: TB. **NOTE:** From version 1.251.0, `storage` can be modified.
  final pulumi.Input<String>? storage;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// VSwitch ID configured to Bastionhost.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [InstanceState].
  /// [adAuthServers] The AD auth server of the Instance. See `ad_auth_server` below.
  /// [bandwidth] The bandwidth of Cloud Bastionhost instance. **NOTE:** From version 1.263.0, `bandwidth` can be modified.
  /// [description] Description of the instance. This name can have a string of 1 to 63 characters.
  /// [enablePublicAccess] Whether to Enable the public internet access to a specified Bastionhost instance. The valid values: `true`, `false`.
  /// [ldapAuthServers] The LDAP auth server of the Instance. See `ldap_auth_server` below.
  /// [licenseCode] The package type of Cloud Bastionhost instance. You can query more supported types through the [DescribePricingModule](https://help.aliyun.com/document_detail/96469.html).
  /// [period] Duration for initially producing the instance. Valid values: [1~9], 12, 24, 36. At present, the provider does not support modify "period".
  /// [planCode] The plan code of Cloud Bastionhost instance. Valid values:
  /// [publicWhiteLists] Optional.
  /// [renewPeriod] Automatic renewal period. Valid values: `1` to `9`, `12`, `24`, `36`. **NOTE:** The `renew_period` is required under the condition that `renewal_status` is `AutoRenewal`. From version 1.193.0, `renew_period` can be modified.
  /// [renewalPeriodUnit] The unit of the auto-renewal period. Valid values:  **NOTE:** The `renewal_period_unit` is required under the condition that `renewal_status` is `AutoRenewal`.
  /// [renewalStatus] Automatic renewal status. Valid values: `AutoRenewal`, `ManualRenewal`, `NotRenewal`. From version 1.193.0, `renewal_status` can be modified.
  /// [resourceGroupId] The Id of resource group which the Bastionhost Instance belongs. If not set, the resource is created in the default resource group.
  /// [securityGroupIds] security group IDs configured to Bastionhost.
  /// [slaveVswitchId] Slave VSwitch ID configured to Bastionhost.
  /// [storage] The storage of Cloud Bastionhost instance. Valid values: `0` to `500`. Unit: TB. **NOTE:** From version 1.251.0, `storage` can be modified.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vswitchId] VSwitch ID configured to Bastionhost.
  const InstanceState({
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
      'adAuthServers': ?pulumi.Input.mapOptionalInputValue<List<InstanceAdAuthServer>, List<Map<String, dynamic>>>(adAuthServers, (value) => pulumi.Input.encodeList<InstanceAdAuthServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bandwidth': ?bandwidth,
      'description': ?description,
      'enablePublicAccess': ?enablePublicAccess,
      'ldapAuthServers': ?pulumi.Input.mapOptionalInputValue<List<InstanceLdapAuthServer>, List<Map<String, dynamic>>>(ldapAuthServers, (value) => pulumi.Input.encodeList<InstanceLdapAuthServer, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      adAuthServers: (() { final guardedValue = map['adAuthServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceAdAuthServer>(guardedValue, (value) => InstanceAdAuthServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      bandwidth: (() { final guardedValue = map['bandwidth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablePublicAccess: (() { final guardedValue = map['enablePublicAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ldapAuthServers: (() { final guardedValue = map['ldapAuthServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceLdapAuthServer>(guardedValue, (value) => InstanceLdapAuthServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
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


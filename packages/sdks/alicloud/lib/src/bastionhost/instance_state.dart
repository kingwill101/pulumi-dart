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
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
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
  InstanceState({
    pulumi.Output<List<InstanceAdAuthServer>>? adAuthServers,
    pulumi.Output<String>? bandwidth,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enablePublicAccess,
    pulumi.Output<List<InstanceLdapAuthServer>>? ldapAuthServers,
    pulumi.Output<String>? licenseCode,
    pulumi.Output<int>? period,
    pulumi.Output<String>? planCode,
    pulumi.Output<List<String>>? publicWhiteLists,
    pulumi.Output<int>? renewPeriod,
    pulumi.Output<String>? renewalPeriodUnit,
    pulumi.Output<String>? renewalStatus,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<String>? slaveVswitchId,
    pulumi.Output<String>? storage,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vswitchId,
  }) :
      adAuthServers = pulumi.Input.asOptionalInput<List<InstanceAdAuthServer>>(adAuthServers),
      bandwidth = pulumi.Input.asOptionalInput<String>(bandwidth),
      description = pulumi.Input.asOptionalInput<String>(description),
      enablePublicAccess = pulumi.Input.asOptionalInput<bool>(enablePublicAccess),
      ldapAuthServers = pulumi.Input.asOptionalInput<List<InstanceLdapAuthServer>>(ldapAuthServers),
      licenseCode = pulumi.Input.asOptionalInput<String>(licenseCode),
      period = pulumi.Input.asOptionalInput<int>(period),
      planCode = pulumi.Input.asOptionalInput<String>(planCode),
      publicWhiteLists = pulumi.Input.asOptionalInput<List<String>>(publicWhiteLists),
      renewPeriod = pulumi.Input.asOptionalInput<int>(renewPeriod),
      renewalPeriodUnit = pulumi.Input.asOptionalInput<String>(renewalPeriodUnit),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      slaveVswitchId = pulumi.Input.asOptionalInput<String>(slaveVswitchId),
      storage = pulumi.Input.asOptionalInput<String>(storage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      adAuthServers: map['adAuthServers'] == null ? null : pulumi.Output.create<List<InstanceAdAuthServer>>(pulumi.Input.decodeList<InstanceAdAuthServer>(map['adAuthServers'], (value) => InstanceAdAuthServer.fromMap((value as Map).cast<String, dynamic>()))),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<String>(map['bandwidth'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enablePublicAccess: map['enablePublicAccess'] == null ? null : pulumi.Output.create<bool>(map['enablePublicAccess'] as bool),
      ldapAuthServers: map['ldapAuthServers'] == null ? null : pulumi.Output.create<List<InstanceLdapAuthServer>>(pulumi.Input.decodeList<InstanceLdapAuthServer>(map['ldapAuthServers'], (value) => InstanceLdapAuthServer.fromMap((value as Map).cast<String, dynamic>()))),
      licenseCode: map['licenseCode'] == null ? null : pulumi.Output.create<String>(map['licenseCode'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      planCode: map['planCode'] == null ? null : pulumi.Output.create<String>(map['planCode'] as String),
      publicWhiteLists: map['publicWhiteLists'] == null ? null : pulumi.Output.create<List<String>>((map['publicWhiteLists'] as List).cast<String>()),
      renewPeriod: map['renewPeriod'] == null ? null : pulumi.Output.create<int>(map['renewPeriod'] as int),
      renewalPeriodUnit: map['renewalPeriodUnit'] == null ? null : pulumi.Output.create<String>(map['renewalPeriodUnit'] as String),
      renewalStatus: map['renewalStatus'] == null ? null : pulumi.Output.create<String>(map['renewalStatus'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      slaveVswitchId: map['slaveVswitchId'] == null ? null : pulumi.Output.create<String>(map['slaveVswitchId'] as String),
      storage: map['storage'] == null ? null : pulumi.Output.create<String>(map['storage'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}


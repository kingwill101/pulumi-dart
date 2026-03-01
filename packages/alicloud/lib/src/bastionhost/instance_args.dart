// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_ad_auth_server.dart';
import 'instance_ldap_auth_server.dart';

/// {@template pulumi_bastionhost_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_instance_instance_args_doc}
class InstanceArgs {
  /// The AD auth server of the Instance. See `ad_auth_server` below.
  final pulumi.Input<List<InstanceAdAuthServer>>? adAuthServers;
  /// The bandwidth of Cloud Bastionhost instance. **NOTE:** From version 1.263.0, `bandwidth` can be modified.
  /// If China-Site Account, its valid values: 0 to 150. Unit: Mbit/s. The value must be a multiple of 5.
  /// If International-Site Account, its valid values: 0 to 200. Unit: Mbit/s. The value must be a multiple of 10.
  final pulumi.Input<String> bandwidth;
  /// Description of the instance. This name can have a string of 1 to 63 characters.
  final pulumi.Input<String> description;
  /// Whether to Enable the public internet access to a specified Bastionhost instance. The valid values: `true`, `false`.
  final pulumi.Input<bool>? enablePublicAccess;
  /// The LDAP auth server of the Instance. See `ldap_auth_server` below.
  final pulumi.Input<List<InstanceLdapAuthServer>>? ldapAuthServers;
  /// The package type of Cloud Bastionhost instance. You can query more supported types through the [DescribePricingModule](https://help.aliyun.com/document_detail/96469.html).
  final pulumi.Input<String> licenseCode;
  /// Duration for initially producing the instance. Valid values: [1~9], 12, 24, 36. At present, the provider does not support modify "period".
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  final pulumi.Input<int>? period;
  /// The plan code of Cloud Bastionhost instance. Valid values:
  final pulumi.Input<String> planCode;
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
  final pulumi.Input<List<String>> securityGroupIds;
  /// Slave VSwitch ID configured to Bastionhost.
  final pulumi.Input<String>? slaveVswitchId;
  /// The storage of Cloud Bastionhost instance. Valid values: `0` to `500`. Unit: TB. **NOTE:** From version 1.251.0, `storage` can be modified.
  final pulumi.Input<String> storage;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// VSwitch ID configured to Bastionhost.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [InstanceArgs].
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
  InstanceArgs({
    List<InstanceAdAuthServer>? adAuthServers,
    required String bandwidth,
    required String description,
    bool? enablePublicAccess,
    List<InstanceLdapAuthServer>? ldapAuthServers,
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
      adAuthServers = pulumi.Input.asOptionalInput<List<InstanceAdAuthServer>>(adAuthServers),
      bandwidth = pulumi.Input.asInput<String>(bandwidth),
      description = pulumi.Input.asInput<String>(description),
      enablePublicAccess = pulumi.Input.asOptionalInput<bool>(enablePublicAccess),
      ldapAuthServers = pulumi.Input.asOptionalInput<List<InstanceLdapAuthServer>>(ldapAuthServers),
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
      'adAuthServers': ?pulumi.Input.mapOptionalInputValue<List<InstanceAdAuthServer>, List<Map<String, dynamic>>>(adAuthServers, (value) => pulumi.Input.encodeList<InstanceAdAuthServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bandwidth': bandwidth,
      'description': description,
      'enablePublicAccess': ?enablePublicAccess,
      'ldapAuthServers': ?pulumi.Input.mapOptionalInputValue<List<InstanceLdapAuthServer>, List<Map<String, dynamic>>>(ldapAuthServers, (value) => pulumi.Input.encodeList<InstanceLdapAuthServer, Map<String, dynamic>>(value, (value) => value.toMap())),
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

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      adAuthServers: map['adAuthServers'] == null ? null : pulumi.Input.decodeList<InstanceAdAuthServer>(map['adAuthServers'], (value) => InstanceAdAuthServer.fromMap((value as Map).cast<String, dynamic>())),
      bandwidth: map['bandwidth'] as String,
      description: map['description'] as String,
      enablePublicAccess: map['enablePublicAccess'] == null ? null : map['enablePublicAccess'] as bool,
      ldapAuthServers: map['ldapAuthServers'] == null ? null : pulumi.Input.decodeList<InstanceLdapAuthServer>(map['ldapAuthServers'], (value) => InstanceLdapAuthServer.fromMap((value as Map).cast<String, dynamic>())),
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


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gtm_instance_alert_config.dart';

/// Input properties used for looking up and filtering GtmInstance resources.
class GtmInstanceState {
  /// The alert notification methods. See `alert_config` below for details.
  final pulumi.Input<List<GtmInstanceAlertConfig>>? alertConfigs;
  /// The alert group.
  final pulumi.Input<List<String>>? alertGroups;
  /// The access type of the CNAME domain name. Valid value: `PUBLIC`.
  final pulumi.Input<String>? cnameType;
  /// The force update.
  final pulumi.Input<bool>? forceUpdate;
  /// The quota of detection tasks.
  final pulumi.Input<int>? healthCheckTaskCount;
  /// The name of the instance.
  final pulumi.Input<String>? instanceName;
  /// The lang.
  final pulumi.Input<String>? lang;
  /// Paid package version. Valid values: `ultimate`, `standard`.
  final pulumi.Input<String>? packageEdition;
  /// The Payment Type of the resource. Valid value: `Subscription`.
  final pulumi.Input<String>? paymentType;
  /// Creating a pre-paid instance, it must be set, the unit is month, please enter an integer multiple of 12 for annually paid products.
  final pulumi.Input<int>? period;
  /// The Public Network domain name access method. Valid values: `CUSTOM`, `SYSTEM_ASSIGN`.
  final pulumi.Input<String>? publicCnameMode;
  /// The CNAME access domain name.
  final pulumi.Input<String>? publicRr;
  /// The website domain name that the user uses on the Internet.
  final pulumi.Input<String>? publicUserDomainName;
  /// The domain name that is used to access GTM over the Internet.
  final pulumi.Input<String>? publicZoneName;
  /// Automatic renewal period, the unit is month. When setting `renewal_status` to AutoRenewal, it must be set.
  final pulumi.Input<int>? renewPeriod;
  /// Automatic renewal status. Valid values: `AutoRenewal`, `ManualRenewal`.
  final pulumi.Input<String>? renewalStatus;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The quota of SMS notifications.
  final pulumi.Input<int>? smsNotificationCount;
  /// The type of the access policy. Valid values: `GEO`, `LATENCY`.
  final pulumi.Input<String>? strategyMode;
  /// The global time to live. Valid values: `60`, `120`, `300`, `600`. Unit: second.
  final pulumi.Input<int>? ttl;

  /// Creates a new [GtmInstanceState].
  /// [alertConfigs] The alert notification methods. See `alert_config` below for details.
  /// [alertGroups] The alert group.
  /// [cnameType] The access type of the CNAME domain name. Valid value: `PUBLIC`.
  /// [forceUpdate] The force update.
  /// [healthCheckTaskCount] The quota of detection tasks.
  /// [instanceName] The name of the instance.
  /// [lang] The lang.
  /// [packageEdition] Paid package version. Valid values: `ultimate`, `standard`.
  /// [paymentType] The Payment Type of the resource. Valid value: `Subscription`.
  /// [period] Creating a pre-paid instance, it must be set, the unit is month, please enter an integer multiple of 12 for annually paid products.
  /// [publicCnameMode] The Public Network domain name access method. Valid values: `CUSTOM`, `SYSTEM_ASSIGN`.
  /// [publicRr] The CNAME access domain name.
  /// [publicUserDomainName] The website domain name that the user uses on the Internet.
  /// [publicZoneName] The domain name that is used to access GTM over the Internet.
  /// [renewPeriod] Automatic renewal period, the unit is month. When setting `renewal_status` to AutoRenewal, it must be set.
  /// [renewalStatus] Automatic renewal status. Valid values: `AutoRenewal`, `ManualRenewal`.
  /// [resourceGroupId] The ID of the resource group.
  /// [smsNotificationCount] The quota of SMS notifications.
  /// [strategyMode] The type of the access policy. Valid values: `GEO`, `LATENCY`.
  /// [ttl] The global time to live. Valid values: `60`, `120`, `300`, `600`. Unit: second.
  GtmInstanceState({
    this.alertConfigs,
    this.alertGroups,
    this.cnameType,
    this.forceUpdate,
    this.healthCheckTaskCount,
    this.instanceName,
    this.lang,
    this.packageEdition,
    this.paymentType,
    this.period,
    this.publicCnameMode,
    this.publicRr,
    this.publicUserDomainName,
    this.publicZoneName,
    this.renewPeriod,
    this.renewalStatus,
    this.resourceGroupId,
    this.smsNotificationCount,
    this.strategyMode,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertConfigs': ?pulumi.Input.mapOptionalInputValue<List<GtmInstanceAlertConfig>, List<Map<String, dynamic>>>(alertConfigs, (value) => pulumi.Input.encodeList<GtmInstanceAlertConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'alertGroups': ?alertGroups,
      'cnameType': ?cnameType,
      'forceUpdate': ?forceUpdate,
      'healthCheckTaskCount': ?healthCheckTaskCount,
      'instanceName': ?instanceName,
      'lang': ?lang,
      'packageEdition': ?packageEdition,
      'paymentType': ?paymentType,
      'period': ?period,
      'publicCnameMode': ?publicCnameMode,
      'publicRr': ?publicRr,
      'publicUserDomainName': ?publicUserDomainName,
      'publicZoneName': ?publicZoneName,
      'renewPeriod': ?renewPeriod,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'smsNotificationCount': ?smsNotificationCount,
      'strategyMode': ?strategyMode,
      'ttl': ?ttl,
    };
  }

  factory GtmInstanceState.fromMap(Map<String, dynamic> map) {
    return GtmInstanceState(
      alertConfigs: map['alertConfigs'] == null ? null : (pulumi.Input.decodeList<GtmInstanceAlertConfig>(map['alertConfigs'], (value) => GtmInstanceAlertConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      alertGroups: map['alertGroups'] == null ? null : ((map['alertGroups'] as List).cast<String>()).input(),
      cnameType: map['cnameType'] == null ? null : (map['cnameType'] as String).input(),
      forceUpdate: map['forceUpdate'] == null ? null : (map['forceUpdate'] as bool).input(),
      healthCheckTaskCount: map['healthCheckTaskCount'] == null ? null : (map['healthCheckTaskCount'] as int).input(),
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      lang: map['lang'] == null ? null : (map['lang'] as String).input(),
      packageEdition: map['packageEdition'] == null ? null : (map['packageEdition'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      publicCnameMode: map['publicCnameMode'] == null ? null : (map['publicCnameMode'] as String).input(),
      publicRr: map['publicRr'] == null ? null : (map['publicRr'] as String).input(),
      publicUserDomainName: map['publicUserDomainName'] == null ? null : (map['publicUserDomainName'] as String).input(),
      publicZoneName: map['publicZoneName'] == null ? null : (map['publicZoneName'] as String).input(),
      renewPeriod: map['renewPeriod'] == null ? null : (map['renewPeriod'] as int).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      smsNotificationCount: map['smsNotificationCount'] == null ? null : (map['smsNotificationCount'] as int).input(),
      strategyMode: map['strategyMode'] == null ? null : (map['strategyMode'] as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl'] as int).input(),
    );
  }
}


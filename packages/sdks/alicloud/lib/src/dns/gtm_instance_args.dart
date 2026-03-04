// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gtm_instance_alert_config.dart';

/// {@template pulumi_dns_gtm_instance_gtm_instance_args_doc}
/// The set of arguments for GtmInstance.
/// {@endtemplate}
/// {@macro pulumi_dns_gtm_instance_gtm_instance_args_doc}
class GtmInstanceArgs {
  /// The alert notification methods. See `alert_config` below for details.
  final pulumi.Input<List<GtmInstanceAlertConfig>>? alertConfigs;

  /// The alert group.
  final pulumi.Input<List<String>>? alertGroups;

  /// The access type of the CNAME domain name. Valid value: `PUBLIC`.
  final pulumi.Input<String>? cnameType;

  /// The force update.
  final pulumi.Input<bool>? forceUpdate;

  /// The quota of detection tasks.
  final pulumi.Input<int> healthCheckTaskCount;

  /// The name of the instance.
  final pulumi.Input<String> instanceName;

  /// The lang.
  final pulumi.Input<String>? lang;

  /// Paid package version. Valid values: `ultimate`, `standard`.
  final pulumi.Input<String> packageEdition;

  /// The Payment Type of the resource. Valid value: `Subscription`.
  final pulumi.Input<String> paymentType;

  /// Creating a pre-paid instance, it must be set, the unit is month, please enter an integer multiple of 12 for annually paid products.
  final pulumi.Input<int> period;

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
  final pulumi.Input<int> smsNotificationCount;

  /// The type of the access policy. Valid values: `GEO`, `LATENCY`.
  final pulumi.Input<String>? strategyMode;

  /// The global time to live. Valid values: `60`, `120`, `300`, `600`. Unit: second.
  final pulumi.Input<int>? ttl;

  /// Creates a new [GtmInstanceArgs].
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
  GtmInstanceArgs({
    this.alertConfigs,
    this.alertGroups,
    this.cnameType,
    this.forceUpdate,
    required this.healthCheckTaskCount,
    required this.instanceName,
    this.lang,
    required this.packageEdition,
    required this.paymentType,
    required this.period,
    this.publicCnameMode,
    this.publicRr,
    this.publicUserDomainName,
    this.publicZoneName,
    this.renewPeriod,
    this.renewalStatus,
    this.resourceGroupId,
    required this.smsNotificationCount,
    this.strategyMode,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<GtmInstanceAlertConfig>,
            List<Map<String, dynamic>>
          >(
            alertConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GtmInstanceAlertConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'alertGroups': ?alertGroups,
      'cnameType': ?cnameType,
      'forceUpdate': ?forceUpdate,
      'healthCheckTaskCount': healthCheckTaskCount,
      'instanceName': instanceName,
      'lang': ?lang,
      'packageEdition': packageEdition,
      'paymentType': paymentType,
      'period': period,
      'publicCnameMode': ?publicCnameMode,
      'publicRr': ?publicRr,
      'publicUserDomainName': ?publicUserDomainName,
      'publicZoneName': ?publicZoneName,
      'renewPeriod': ?renewPeriod,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'smsNotificationCount': smsNotificationCount,
      'strategyMode': ?strategyMode,
      'ttl': ?ttl,
    };
  }

  factory GtmInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GtmInstanceArgs(
      alertConfigs: (() {
        final guardedValue = map['alertConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GtmInstanceAlertConfig>(
            guardedValue,
            (value) => GtmInstanceAlertConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      alertGroups: (() {
        final guardedValue = map['alertGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      cnameType: (() {
        final guardedValue = map['cnameType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forceUpdate: (() {
        final guardedValue = map['forceUpdate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      healthCheckTaskCount: pulumi.Input.fromValue(
        map['healthCheckTaskCount'] as int,
      ),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      packageEdition: pulumi.Input.fromValue(map['packageEdition'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      period: pulumi.Input.fromValue(map['period'] as int),
      publicCnameMode: (() {
        final guardedValue = map['publicCnameMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicRr: (() {
        final guardedValue = map['publicRr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicUserDomainName: (() {
        final guardedValue = map['publicUserDomainName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicZoneName: (() {
        final guardedValue = map['publicZoneName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      renewPeriod: (() {
        final guardedValue = map['renewPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      renewalStatus: (() {
        final guardedValue = map['renewalStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      smsNotificationCount: pulumi.Input.fromValue(
        map['smsNotificationCount'] as int,
      ),
      strategyMode: (() {
        final guardedValue = map['strategyMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ttl: (() {
        final guardedValue = map['ttl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}

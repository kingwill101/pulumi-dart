// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_alidns_instance_alidns_instance_args_doc}
/// The set of arguments for AlidnsInstance.
/// {@endtemplate}
/// {@macro pulumi_dns_alidns_instance_alidns_instance_args_doc}
class AlidnsInstanceArgs {
  /// Alidns security level. Valid values: `no`, `basic`, `advanced`.
  final pulumi.Input<String> dnsSecurity;

  /// Number of domain names bound.
  final pulumi.Input<String> domainNumbers;

  /// The billing method of the Alidns instance. Valid values: `Subscription`. Default to `Subscription`.
  final pulumi.Input<String>? paymentType;

  /// Creating a pre-paid instance, it must be set, the unit is month, please enter an integer multiple of 12 for annually paid products.
  final pulumi.Input<int>? period;

  /// Automatic renewal period, the unit is month. When setting RenewalStatus to AutoRenewal, it must be set.
  final pulumi.Input<int>? renewPeriod;

  /// Automatic renewal status. Valid values: `AutoRenewal`, `ManualRenewal`, default to `ManualRenewal`.
  final pulumi.Input<String>? renewalStatus;

  /// Paid package version. Valid values: `version_personal`, `version_enterprise_basic`, `version_enterprise_advanced`.
  final pulumi.Input<String> versionCode;

  /// Creates a new [AlidnsInstanceArgs].
  /// [dnsSecurity] Alidns security level. Valid values: `no`, `basic`, `advanced`.
  /// [domainNumbers] Number of domain names bound.
  /// [paymentType] The billing method of the Alidns instance. Valid values: `Subscription`. Default to `Subscription`.
  /// [period] Creating a pre-paid instance, it must be set, the unit is month, please enter an integer multiple of 12 for annually paid products.
  /// [renewPeriod] Automatic renewal period, the unit is month. When setting RenewalStatus to AutoRenewal, it must be set.
  /// [renewalStatus] Automatic renewal status. Valid values: `AutoRenewal`, `ManualRenewal`, default to `ManualRenewal`.
  /// [versionCode] Paid package version. Valid values: `version_personal`, `version_enterprise_basic`, `version_enterprise_advanced`.
  AlidnsInstanceArgs({
    required this.dnsSecurity,
    required this.domainNumbers,
    this.paymentType,
    this.period,
    this.renewPeriod,
    this.renewalStatus,
    required this.versionCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsSecurity': dnsSecurity,
      'domainNumbers': domainNumbers,
      'paymentType': ?paymentType,
      'period': ?period,
      'renewPeriod': ?renewPeriod,
      'renewalStatus': ?renewalStatus,
      'versionCode': versionCode,
    };
  }

  factory AlidnsInstanceArgs.fromMap(Map<String, dynamic> map) {
    return AlidnsInstanceArgs(
      dnsSecurity: pulumi.Input.fromValue(map['dnsSecurity'] as String),
      domainNumbers: pulumi.Input.fromValue(map['domainNumbers'] as String),
      paymentType: (() {
        final guardedValue = map['paymentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      period: (() {
        final guardedValue = map['period'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
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
      versionCode: pulumi.Input.fromValue(map['versionCode'] as String),
    );
  }
}

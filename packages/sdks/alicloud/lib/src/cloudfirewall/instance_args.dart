// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_instance_instance_args_doc}
class InstanceArgs {
  /// The number of multi account. It will be ignored when `cfw_account = false`.
  final pulumi.Input<int>? accountNumber;

  /// Public network processing capability. Valid values: 10 to 15000. Unit: Mbps.
  final pulumi.Input<int>? bandWidth;

  /// Whether to use multi-account. Valid values: `true`, `false`.
  final pulumi.Input<bool>? cfwAccount;

  /// Whether to use log audit. Valid values: `true`, `false`. **NOTE:** From version 1.232.0, When `payment_type` is set to `PayAsYouGo`, `cfw_log` can only be set to `true`, `cfw_log` cannot be modified to `false`.
  final pulumi.Input<bool>? cfwLog;

  /// The log storage capacity. **NOTE:** From version 1.232.0, When `payment_type` is set to `PayAsYouGo`, or `cfw_log` is set to `false`, `cfw_log_storage` will be ignored.
  final pulumi.Input<int>? cfwLogStorage;

  /// The number of protected VPCs. It will be ignored when `spec = "premium_version"`. Valid values between 2 and 500.
  final pulumi.Input<int>? fwVpcNumber;

  /// The number of assets.
  final pulumi.Input<int>? instanceCount;

  /// The number of public IPs that can be protected. Valid values: 20 to 4000.
  final pulumi.Input<int>? ipNumber;

  /// The logistics.
  final pulumi.Input<String>? logistics;

  /// The type of modification. Valid values: `Upgrade`, `Downgrade`. **NOTE:** The `modify_type` is required when you execute an update operation.
  final pulumi.Input<String>? modifyType;

  /// The payment type of the resource. Valid values: `Subscription`, `PayAsYouGo`. **NOTE:** From version 1.220.0, `payment_type` can be set to `PayAsYouGo`.
  final pulumi.Input<String> paymentType;

  /// The prepaid period. Valid values: `1`, `3`, `6`, `12`, `24`, `36`. **NOTE:** 1 and 3 available since 1.204.1. If `payment_type` is set to `Subscription`, `period` is required. Otherwise, it will be ignored.
  final pulumi.Input<int>? period;

  /// Automatic renewal period. Attribute `renew_period` has been deprecated since 1.209.1. Using `renewal_duration` instead.
  final pulumi.Input<int>? renewPeriod;

  /// Auto-Renewal Duration. It is required under the condition that `renewal_status` is `AutoRenewal`. Valid values: `1`, `2`, `3`, `6`, `12`.
  /// **NOTE:** `renewal_duration` takes effect only if `payment_type` is set to `Subscription`, and `renewal_status` is set to `AutoRenewal`.
  final pulumi.Input<int>? renewalDuration;

  /// Auto-Renewal Cycle Unit Values Include: Month: Month. Year: Years. Valid values: `Month`, `Year`.
  final pulumi.Input<String>? renewalDurationUnit;

  /// Whether to renew an instance automatically or not. Default value: `ManualRenewal`.
  /// - `AutoRenewal`: Auto renewal.
  /// - `ManualRenewal`: Manual renewal.
  /// - `NotRenewal`: No renewal any longer. After you specify this value, Alibaba Cloud stop sending notification of instance expiry, and only gives a brief reminder on the third day before the instance expiry.
  /// **NOTE:** `renewal_status` takes effect only if `payment_type` is set to `Subscription`.
  final pulumi.Input<String>? renewalStatus;

  /// Current version. Valid values: `premium_version`, `enterprise_version`,`ultimate_version`.
  final pulumi.Input<String>? spec;

  /// Creates a new [InstanceArgs].
  /// [accountNumber] The number of multi account. It will be ignored when `cfw_account = false`.
  /// [bandWidth] Public network processing capability. Valid values: 10 to 15000. Unit: Mbps.
  /// [cfwAccount] Whether to use multi-account. Valid values: `true`, `false`.
  /// [cfwLog] Whether to use log audit. Valid values: `true`, `false`. **NOTE:** From version 1.232.0, When `payment_type` is set to `PayAsYouGo`, `cfw_log` can only be set to `true`, `cfw_log` cannot be modified to `false`.
  /// [cfwLogStorage] The log storage capacity. **NOTE:** From version 1.232.0, When `payment_type` is set to `PayAsYouGo`, or `cfw_log` is set to `false`, `cfw_log_storage` will be ignored.
  /// [fwVpcNumber] The number of protected VPCs. It will be ignored when `spec = "premium_version"`. Valid values between 2 and 500.
  /// [instanceCount] The number of assets.
  /// [ipNumber] The number of public IPs that can be protected. Valid values: 20 to 4000.
  /// [logistics] The logistics.
  /// [modifyType] The type of modification. Valid values: `Upgrade`, `Downgrade`. **NOTE:** The `modify_type` is required when you execute an update operation.
  /// [paymentType] The payment type of the resource. Valid values: `Subscription`, `PayAsYouGo`. **NOTE:** From version 1.220.0, `payment_type` can be set to `PayAsYouGo`.
  /// [period] The prepaid period. Valid values: `1`, `3`, `6`, `12`, `24`, `36`. **NOTE:** 1 and 3 available since 1.204.1. If `payment_type` is set to `Subscription`, `period` is required. Otherwise, it will be ignored.
  /// [renewPeriod] Automatic renewal period. Attribute `renew_period` has been deprecated since 1.209.1. Using `renewal_duration` instead.
  /// [renewalDuration] Auto-Renewal Duration. It is required under the condition that `renewal_status` is `AutoRenewal`. Valid values: `1`, `2`, `3`, `6`, `12`.
  /// [renewalDurationUnit] Auto-Renewal Cycle Unit Values Include: Month: Month. Year: Years. Valid values: `Month`, `Year`.
  /// [renewalStatus] Whether to renew an instance automatically or not. Default value: `ManualRenewal`.
  /// [spec] Current version. Valid values: `premium_version`, `enterprise_version`,`ultimate_version`.
  InstanceArgs({
    this.accountNumber,
    this.bandWidth,
    this.cfwAccount,
    this.cfwLog,
    this.cfwLogStorage,
    this.fwVpcNumber,
    this.instanceCount,
    this.ipNumber,
    this.logistics,
    this.modifyType,
    required this.paymentType,
    this.period,
    this.renewPeriod,
    this.renewalDuration,
    this.renewalDurationUnit,
    this.renewalStatus,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountNumber': ?accountNumber,
      'bandWidth': ?bandWidth,
      'cfwAccount': ?cfwAccount,
      'cfwLog': ?cfwLog,
      'cfwLogStorage': ?cfwLogStorage,
      'fwVpcNumber': ?fwVpcNumber,
      'instanceCount': ?instanceCount,
      'ipNumber': ?ipNumber,
      'logistics': ?logistics,
      'modifyType': ?modifyType,
      'paymentType': paymentType,
      'period': ?period,
      'renewPeriod': ?renewPeriod,
      'renewalDuration': ?renewalDuration,
      'renewalDurationUnit': ?renewalDurationUnit,
      'renewalStatus': ?renewalStatus,
      'spec': ?spec,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      accountNumber: (() {
        final guardedValue = map['accountNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      bandWidth: (() {
        final guardedValue = map['bandWidth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      cfwAccount: (() {
        final guardedValue = map['cfwAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cfwLog: (() {
        final guardedValue = map['cfwLog'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cfwLogStorage: (() {
        final guardedValue = map['cfwLogStorage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      fwVpcNumber: (() {
        final guardedValue = map['fwVpcNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instanceCount: (() {
        final guardedValue = map['instanceCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ipNumber: (() {
        final guardedValue = map['ipNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      logistics: (() {
        final guardedValue = map['logistics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modifyType: (() {
        final guardedValue = map['modifyType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
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
      renewalDuration: (() {
        final guardedValue = map['renewalDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      renewalDurationUnit: (() {
        final guardedValue = map['renewalDurationUnit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      renewalStatus: (() {
        final guardedValue = map['renewalStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spec: (() {
        final guardedValue = map['spec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

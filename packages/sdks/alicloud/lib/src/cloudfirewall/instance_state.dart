// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
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
  /// The creation time.
  final pulumi.Input<String>? createTime;
  /// The end time.
  final pulumi.Input<String>? endTime;
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
  final pulumi.Input<String>? paymentType;
  /// The prepaid period. Valid values: `1`, `3`, `6`, `12`, `24`, `36`. **NOTE:** 1 and 3 available since 1.204.1. If `payment_type` is set to `Subscription`, `period` is required. Otherwise, it will be ignored.
  final pulumi.Input<int>? period;
  /// The release time.
  final pulumi.Input<String>? releaseTime;
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
  /// The status of Cloud Firewall Instance.
  final pulumi.Input<String>? status;
  /// (Available since v1.232.0) The user status of Cloud Firewall Instance.
  final pulumi.Input<bool>? userStatus;

  /// Creates a new [InstanceState].
  /// [accountNumber] The number of multi account. It will be ignored when `cfw_account = false`.
  /// [bandWidth] Public network processing capability. Valid values: 10 to 15000. Unit: Mbps.
  /// [cfwAccount] Whether to use multi-account. Valid values: `true`, `false`.
  /// [cfwLog] Whether to use log audit. Valid values: `true`, `false`. **NOTE:** From version 1.232.0, When `payment_type` is set to `PayAsYouGo`, `cfw_log` can only be set to `true`, `cfw_log` cannot be modified to `false`.
  /// [cfwLogStorage] The log storage capacity. **NOTE:** From version 1.232.0, When `payment_type` is set to `PayAsYouGo`, or `cfw_log` is set to `false`, `cfw_log_storage` will be ignored.
  /// [createTime] The creation time.
  /// [endTime] The end time.
  /// [fwVpcNumber] The number of protected VPCs. It will be ignored when `spec = "premium_version"`. Valid values between 2 and 500.
  /// [instanceCount] The number of assets.
  /// [ipNumber] The number of public IPs that can be protected. Valid values: 20 to 4000.
  /// [logistics] The logistics.
  /// [modifyType] The type of modification. Valid values: `Upgrade`, `Downgrade`. **NOTE:** The `modify_type` is required when you execute an update operation.
  /// [paymentType] The payment type of the resource. Valid values: `Subscription`, `PayAsYouGo`. **NOTE:** From version 1.220.0, `payment_type` can be set to `PayAsYouGo`.
  /// [period] The prepaid period. Valid values: `1`, `3`, `6`, `12`, `24`, `36`. **NOTE:** 1 and 3 available since 1.204.1. If `payment_type` is set to `Subscription`, `period` is required. Otherwise, it will be ignored.
  /// [releaseTime] The release time.
  /// [renewPeriod] Automatic renewal period. Attribute `renew_period` has been deprecated since 1.209.1. Using `renewal_duration` instead.
  /// [renewalDuration] Auto-Renewal Duration. It is required under the condition that `renewal_status` is `AutoRenewal`. Valid values: `1`, `2`, `3`, `6`, `12`.
  /// [renewalDurationUnit] Auto-Renewal Cycle Unit Values Include: Month: Month. Year: Years. Valid values: `Month`, `Year`.
  /// [renewalStatus] Whether to renew an instance automatically or not. Default value: `ManualRenewal`.
  /// [spec] Current version. Valid values: `premium_version`, `enterprise_version`,`ultimate_version`.
  /// [status] The status of Cloud Firewall Instance.
  /// [userStatus] (Available since v1.232.0) The user status of Cloud Firewall Instance.
  InstanceState({
    this.accountNumber,
    this.bandWidth,
    this.cfwAccount,
    this.cfwLog,
    this.cfwLogStorage,
    this.createTime,
    this.endTime,
    this.fwVpcNumber,
    this.instanceCount,
    this.ipNumber,
    this.logistics,
    this.modifyType,
    this.paymentType,
    this.period,
    this.releaseTime,
    this.renewPeriod,
    this.renewalDuration,
    this.renewalDurationUnit,
    this.renewalStatus,
    this.spec,
    this.status,
    this.userStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountNumber': ?accountNumber,
      'bandWidth': ?bandWidth,
      'cfwAccount': ?cfwAccount,
      'cfwLog': ?cfwLog,
      'cfwLogStorage': ?cfwLogStorage,
      'createTime': ?createTime,
      'endTime': ?endTime,
      'fwVpcNumber': ?fwVpcNumber,
      'instanceCount': ?instanceCount,
      'ipNumber': ?ipNumber,
      'logistics': ?logistics,
      'modifyType': ?modifyType,
      'paymentType': ?paymentType,
      'period': ?period,
      'releaseTime': ?releaseTime,
      'renewPeriod': ?renewPeriod,
      'renewalDuration': ?renewalDuration,
      'renewalDurationUnit': ?renewalDurationUnit,
      'renewalStatus': ?renewalStatus,
      'spec': ?spec,
      'status': ?status,
      'userStatus': ?userStatus,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      accountNumber: map['accountNumber'] == null ? null : (map['accountNumber'] as int).input(),
      bandWidth: map['bandWidth'] == null ? null : (map['bandWidth'] as int).input(),
      cfwAccount: map['cfwAccount'] == null ? null : (map['cfwAccount'] as bool).input(),
      cfwLog: map['cfwLog'] == null ? null : (map['cfwLog'] as bool).input(),
      cfwLogStorage: map['cfwLogStorage'] == null ? null : (map['cfwLogStorage'] as int).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      fwVpcNumber: map['fwVpcNumber'] == null ? null : (map['fwVpcNumber'] as int).input(),
      instanceCount: map['instanceCount'] == null ? null : (map['instanceCount'] as int).input(),
      ipNumber: map['ipNumber'] == null ? null : (map['ipNumber'] as int).input(),
      logistics: map['logistics'] == null ? null : (map['logistics'] as String).input(),
      modifyType: map['modifyType'] == null ? null : (map['modifyType'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      releaseTime: map['releaseTime'] == null ? null : (map['releaseTime'] as String).input(),
      renewPeriod: map['renewPeriod'] == null ? null : (map['renewPeriod'] as int).input(),
      renewalDuration: map['renewalDuration'] == null ? null : (map['renewalDuration'] as int).input(),
      renewalDurationUnit: map['renewalDurationUnit'] == null ? null : (map['renewalDurationUnit'] as String).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus'] as String).input(),
      spec: map['spec'] == null ? null : (map['spec'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      userStatus: map['userStatus'] == null ? null : (map['userStatus'] as bool).input(),
    );
  }
}


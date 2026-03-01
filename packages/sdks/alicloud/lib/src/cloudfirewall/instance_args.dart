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
    pulumi.Output<int>? accountNumber,
    pulumi.Output<int>? bandWidth,
    pulumi.Output<bool>? cfwAccount,
    pulumi.Output<bool>? cfwLog,
    pulumi.Output<int>? cfwLogStorage,
    pulumi.Output<int>? fwVpcNumber,
    pulumi.Output<int>? instanceCount,
    pulumi.Output<int>? ipNumber,
    pulumi.Output<String>? logistics,
    pulumi.Output<String>? modifyType,
    required pulumi.Output<String> paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<int>? renewPeriod,
    pulumi.Output<int>? renewalDuration,
    pulumi.Output<String>? renewalDurationUnit,
    pulumi.Output<String>? renewalStatus,
    pulumi.Output<String>? spec,
  }) :
      accountNumber = pulumi.Input.asOptionalInput<int>(accountNumber),
      bandWidth = pulumi.Input.asOptionalInput<int>(bandWidth),
      cfwAccount = pulumi.Input.asOptionalInput<bool>(cfwAccount),
      cfwLog = pulumi.Input.asOptionalInput<bool>(cfwLog),
      cfwLogStorage = pulumi.Input.asOptionalInput<int>(cfwLogStorage),
      fwVpcNumber = pulumi.Input.asOptionalInput<int>(fwVpcNumber),
      instanceCount = pulumi.Input.asOptionalInput<int>(instanceCount),
      ipNumber = pulumi.Input.asOptionalInput<int>(ipNumber),
      logistics = pulumi.Input.asOptionalInput<String>(logistics),
      modifyType = pulumi.Input.asOptionalInput<String>(modifyType),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      renewPeriod = pulumi.Input.asOptionalInput<int>(renewPeriod),
      renewalDuration = pulumi.Input.asOptionalInput<int>(renewalDuration),
      renewalDurationUnit = pulumi.Input.asOptionalInput<String>(renewalDurationUnit),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      spec = pulumi.Input.asOptionalInput<String>(spec);

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
      accountNumber: map['accountNumber'] == null ? null : pulumi.Output.create<int>(map['accountNumber'] as int),
      bandWidth: map['bandWidth'] == null ? null : pulumi.Output.create<int>(map['bandWidth'] as int),
      cfwAccount: map['cfwAccount'] == null ? null : pulumi.Output.create<bool>(map['cfwAccount'] as bool),
      cfwLog: map['cfwLog'] == null ? null : pulumi.Output.create<bool>(map['cfwLog'] as bool),
      cfwLogStorage: map['cfwLogStorage'] == null ? null : pulumi.Output.create<int>(map['cfwLogStorage'] as int),
      fwVpcNumber: map['fwVpcNumber'] == null ? null : pulumi.Output.create<int>(map['fwVpcNumber'] as int),
      instanceCount: map['instanceCount'] == null ? null : pulumi.Output.create<int>(map['instanceCount'] as int),
      ipNumber: map['ipNumber'] == null ? null : pulumi.Output.create<int>(map['ipNumber'] as int),
      logistics: map['logistics'] == null ? null : pulumi.Output.create<String>(map['logistics'] as String),
      modifyType: map['modifyType'] == null ? null : pulumi.Output.create<String>(map['modifyType'] as String),
      paymentType: pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      renewPeriod: map['renewPeriod'] == null ? null : pulumi.Output.create<int>(map['renewPeriod'] as int),
      renewalDuration: map['renewalDuration'] == null ? null : pulumi.Output.create<int>(map['renewalDuration'] as int),
      renewalDurationUnit: map['renewalDurationUnit'] == null ? null : pulumi.Output.create<String>(map['renewalDurationUnit'] as String),
      renewalStatus: map['renewalStatus'] == null ? null : pulumi.Output.create<String>(map['renewalStatus'] as String),
      spec: map['spec'] == null ? null : pulumi.Output.create<String>(map['spec'] as String),
    );
  }
}


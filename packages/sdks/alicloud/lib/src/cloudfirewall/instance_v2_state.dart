// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InstanceV2 resources.
class InstanceV2State {
  /// Whether to use log audit. Valid values:
  final pulumi.Input<bool>? cfwLog;
  /// The creation time.
  final pulumi.Input<String>? createTime;
  /// The end time.
  final pulumi.Input<String>? endTime;
  /// The type of modification. Valid values: `Upgrade`, `Downgrade`. **NOTE:** The `modify_type` is required when you execute an update operation.
  final pulumi.Input<String>? modifyType;
  /// The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`.
  final pulumi.Input<String>? paymentType;
  /// The prepaid period. **NOTE:** If `payment_type` is set to `Subscription`, `period` is required.
  final pulumi.Input<int>? period;
  /// The product code. Valid values: `cfw`.
  final pulumi.Input<String>? productCode;
  /// The product type. Valid values: `cfw_elasticity_public_cn`, `cfw_elasticity_public_intl`, `cfw_sub_public_cn`, `cfw_sub_public_intl`.
  final pulumi.Input<String>? productType;
  /// The release time.
  final pulumi.Input<String>? releaseTime;
  /// The auto-renewal duration. **NOTE:** `renewal_duration` takes effect only if `payment_type` is set to `Subscription`, and `renewal_status` is set to `AutoRenewal`.
  final pulumi.Input<int>? renewalDuration;
  /// The unit of the auto-renewal period. Valid values:
  /// - `M`: Month.
  /// - `Y`: Year.
  final pulumi.Input<String>? renewalDurationUnit;
  /// Whether to renew an instance automatically or not.
  /// - `AutoRenewal`: Auto renewal.
  /// - `ManualRenewal`: Manual renewal.
  /// - `NotRenewal`: No renewal any longer. After you specify this value, Alibaba Cloud stop sending notification of instance expiry, and only gives a brief reminder on the third day before the instance expiry.
  final pulumi.Input<String>? renewalStatus;
  /// Data leakage protection status. Valid values: `true`, `false`.
  final pulumi.Input<bool>? sdl;
  /// The edition of the Cloud Firewall instance. Valid values: `payg_version`, `premium_version`, `enterprise_version`,`ultimate_version`.
  final pulumi.Input<String>? spec;
  /// The status of Cloud Firewall Instance.
  final pulumi.Input<String>? status;
  /// The user status of Cloud Firewall Instance.
  final pulumi.Input<String>? userStatus;

  /// Creates a new [InstanceV2State].
  /// [cfwLog] Whether to use log audit. Valid values:
  /// [createTime] The creation time.
  /// [endTime] The end time.
  /// [modifyType] The type of modification. Valid values: `Upgrade`, `Downgrade`. **NOTE:** The `modify_type` is required when you execute an update operation.
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`.
  /// [period] The prepaid period. **NOTE:** If `payment_type` is set to `Subscription`, `period` is required.
  /// [productCode] The product code. Valid values: `cfw`.
  /// [productType] The product type. Valid values: `cfw_elasticity_public_cn`, `cfw_elasticity_public_intl`, `cfw_sub_public_cn`, `cfw_sub_public_intl`.
  /// [releaseTime] The release time.
  /// [renewalDuration] The auto-renewal duration. **NOTE:** `renewal_duration` takes effect only if `payment_type` is set to `Subscription`, and `renewal_status` is set to `AutoRenewal`.
  /// [renewalDurationUnit] The unit of the auto-renewal period. Valid values:
  /// [renewalStatus] Whether to renew an instance automatically or not.
  /// [sdl] Data leakage protection status. Valid values: `true`, `false`.
  /// [spec] The edition of the Cloud Firewall instance. Valid values: `payg_version`, `premium_version`, `enterprise_version`,`ultimate_version`.
  /// [status] The status of Cloud Firewall Instance.
  /// [userStatus] The user status of Cloud Firewall Instance.
  InstanceV2State({
    pulumi.Output<bool>? cfwLog,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? endTime,
    pulumi.Output<String>? modifyType,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? productCode,
    pulumi.Output<String>? productType,
    pulumi.Output<String>? releaseTime,
    pulumi.Output<int>? renewalDuration,
    pulumi.Output<String>? renewalDurationUnit,
    pulumi.Output<String>? renewalStatus,
    pulumi.Output<bool>? sdl,
    pulumi.Output<String>? spec,
    pulumi.Output<String>? status,
    pulumi.Output<String>? userStatus,
  }) :
      cfwLog = pulumi.Input.asOptionalInput<bool>(cfwLog),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      modifyType = pulumi.Input.asOptionalInput<String>(modifyType),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      productCode = pulumi.Input.asOptionalInput<String>(productCode),
      productType = pulumi.Input.asOptionalInput<String>(productType),
      releaseTime = pulumi.Input.asOptionalInput<String>(releaseTime),
      renewalDuration = pulumi.Input.asOptionalInput<int>(renewalDuration),
      renewalDurationUnit = pulumi.Input.asOptionalInput<String>(renewalDurationUnit),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      sdl = pulumi.Input.asOptionalInput<bool>(sdl),
      spec = pulumi.Input.asOptionalInput<String>(spec),
      status = pulumi.Input.asOptionalInput<String>(status),
      userStatus = pulumi.Input.asOptionalInput<String>(userStatus);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cfwLog': ?cfwLog,
      'createTime': ?createTime,
      'endTime': ?endTime,
      'modifyType': ?modifyType,
      'paymentType': ?paymentType,
      'period': ?period,
      'productCode': ?productCode,
      'productType': ?productType,
      'releaseTime': ?releaseTime,
      'renewalDuration': ?renewalDuration,
      'renewalDurationUnit': ?renewalDurationUnit,
      'renewalStatus': ?renewalStatus,
      'sdl': ?sdl,
      'spec': ?spec,
      'status': ?status,
      'userStatus': ?userStatus,
    };
  }

  factory InstanceV2State.fromMap(Map<String, dynamic> map) {
    return InstanceV2State(
      cfwLog: map['cfwLog'] == null ? null : pulumi.Output.create<bool>(map['cfwLog'] as bool),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      modifyType: map['modifyType'] == null ? null : pulumi.Output.create<String>(map['modifyType'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      productCode: map['productCode'] == null ? null : pulumi.Output.create<String>(map['productCode'] as String),
      productType: map['productType'] == null ? null : pulumi.Output.create<String>(map['productType'] as String),
      releaseTime: map['releaseTime'] == null ? null : pulumi.Output.create<String>(map['releaseTime'] as String),
      renewalDuration: map['renewalDuration'] == null ? null : pulumi.Output.create<int>(map['renewalDuration'] as int),
      renewalDurationUnit: map['renewalDurationUnit'] == null ? null : pulumi.Output.create<String>(map['renewalDurationUnit'] as String),
      renewalStatus: map['renewalStatus'] == null ? null : pulumi.Output.create<String>(map['renewalStatus'] as String),
      sdl: map['sdl'] == null ? null : pulumi.Output.create<bool>(map['sdl'] as bool),
      spec: map['spec'] == null ? null : pulumi.Output.create<String>(map['spec'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      userStatus: map['userStatus'] == null ? null : pulumi.Output.create<String>(map['userStatus'] as String),
    );
  }
}


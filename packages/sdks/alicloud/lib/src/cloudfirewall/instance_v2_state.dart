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
    this.cfwLog,
    this.createTime,
    this.endTime,
    this.modifyType,
    this.paymentType,
    this.period,
    this.productCode,
    this.productType,
    this.releaseTime,
    this.renewalDuration,
    this.renewalDurationUnit,
    this.renewalStatus,
    this.sdl,
    this.spec,
    this.status,
    this.userStatus,
  });

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
      cfwLog: map['cfwLog'] == null ? null : (map['cfwLog'] as bool).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      modifyType: map['modifyType'] == null ? null : (map['modifyType'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      productCode: map['productCode'] == null ? null : (map['productCode'] as String).input(),
      productType: map['productType'] == null ? null : (map['productType'] as String).input(),
      releaseTime: map['releaseTime'] == null ? null : (map['releaseTime'] as String).input(),
      renewalDuration: map['renewalDuration'] == null ? null : (map['renewalDuration'] as int).input(),
      renewalDurationUnit: map['renewalDurationUnit'] == null ? null : (map['renewalDurationUnit'] as String).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus'] as String).input(),
      sdl: map['sdl'] == null ? null : (map['sdl'] as bool).input(),
      spec: map['spec'] == null ? null : (map['spec'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      userStatus: map['userStatus'] == null ? null : (map['userStatus'] as String).input(),
    );
  }
}


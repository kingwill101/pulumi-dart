// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfirewall_instance_v2_instance_v2_args_doc}
/// The set of arguments for InstanceV2.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_instance_v2_instance_v2_args_doc}
class InstanceV2Args {
  /// Whether to use log audit. Valid values:
  final pulumi.Input<bool>? cfwLog;
  /// The type of modification. Valid values: `Upgrade`, `Downgrade`. **NOTE:** The `modify_type` is required when you execute an update operation.
  final pulumi.Input<String>? modifyType;
  /// The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`.
  final pulumi.Input<String> paymentType;
  /// The prepaid period. **NOTE:** If `payment_type` is set to `Subscription`, `period` is required.
  final pulumi.Input<int>? period;
  /// The product code. Valid values: `cfw`.
  final pulumi.Input<String> productCode;
  /// The product type. Valid values: `cfw_elasticity_public_cn`, `cfw_elasticity_public_intl`, `cfw_sub_public_cn`, `cfw_sub_public_intl`.
  final pulumi.Input<String> productType;
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
  final pulumi.Input<String> spec;

  /// Creates a new [InstanceV2Args].
  /// [cfwLog] Whether to use log audit. Valid values:
  /// [modifyType] The type of modification. Valid values: `Upgrade`, `Downgrade`. **NOTE:** The `modify_type` is required when you execute an update operation.
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo`, `Subscription`.
  /// [period] The prepaid period. **NOTE:** If `payment_type` is set to `Subscription`, `period` is required.
  /// [productCode] The product code. Valid values: `cfw`.
  /// [productType] The product type. Valid values: `cfw_elasticity_public_cn`, `cfw_elasticity_public_intl`, `cfw_sub_public_cn`, `cfw_sub_public_intl`.
  /// [renewalDuration] The auto-renewal duration. **NOTE:** `renewal_duration` takes effect only if `payment_type` is set to `Subscription`, and `renewal_status` is set to `AutoRenewal`.
  /// [renewalDurationUnit] The unit of the auto-renewal period. Valid values:
  /// [renewalStatus] Whether to renew an instance automatically or not.
  /// [sdl] Data leakage protection status. Valid values: `true`, `false`.
  /// [spec] The edition of the Cloud Firewall instance. Valid values: `payg_version`, `premium_version`, `enterprise_version`,`ultimate_version`.
  InstanceV2Args({
    bool? cfwLog,
    String? modifyType,
    required String paymentType,
    int? period,
    required String productCode,
    required String productType,
    int? renewalDuration,
    String? renewalDurationUnit,
    String? renewalStatus,
    bool? sdl,
    required String spec,
  }) :
      cfwLog = pulumi.Input.asOptionalInput<bool>(cfwLog),
      modifyType = pulumi.Input.asOptionalInput<String>(modifyType),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      productCode = pulumi.Input.asInput<String>(productCode),
      productType = pulumi.Input.asInput<String>(productType),
      renewalDuration = pulumi.Input.asOptionalInput<int>(renewalDuration),
      renewalDurationUnit = pulumi.Input.asOptionalInput<String>(renewalDurationUnit),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      sdl = pulumi.Input.asOptionalInput<bool>(sdl),
      spec = pulumi.Input.asInput<String>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cfwLog': ?cfwLog,
      'modifyType': ?modifyType,
      'paymentType': paymentType,
      'period': ?period,
      'productCode': productCode,
      'productType': productType,
      'renewalDuration': ?renewalDuration,
      'renewalDurationUnit': ?renewalDurationUnit,
      'renewalStatus': ?renewalStatus,
      'sdl': ?sdl,
      'spec': spec,
    };
  }

  factory InstanceV2Args.fromMap(Map<String, dynamic> map) {
    return InstanceV2Args(
      cfwLog: map['cfwLog'] == null ? null : map['cfwLog'] as bool,
      modifyType: map['modifyType'] == null ? null : map['modifyType'] as String,
      paymentType: map['paymentType'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      productCode: map['productCode'] as String,
      productType: map['productType'] as String,
      renewalDuration: map['renewalDuration'] == null ? null : map['renewalDuration'] as int,
      renewalDurationUnit: map['renewalDurationUnit'] == null ? null : map['renewalDurationUnit'] as String,
      renewalStatus: map['renewalStatus'] == null ? null : map['renewalStatus'] as String,
      sdl: map['sdl'] == null ? null : map['sdl'] as bool,
      spec: map['spec'] as String,
    );
  }
}


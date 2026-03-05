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
    this.cfwLog,
    this.modifyType,
    required this.paymentType,
    this.period,
    required this.productCode,
    required this.productType,
    this.renewalDuration,
    this.renewalDurationUnit,
    this.renewalStatus,
    this.sdl,
    required this.spec,
  });

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
      cfwLog: (() { final guardedValue = map['cfwLog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modifyType: (() { final guardedValue = map['modifyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
      productType: pulumi.Input.fromValue(map['productType'] as String),
      renewalDuration: (() { final guardedValue = map['renewalDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      renewalDurationUnit: (() { final guardedValue = map['renewalDurationUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalStatus: (() { final guardedValue = map['renewalStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sdl: (() { final guardedValue = map['sdl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      spec: pulumi.Input.fromValue(map['spec'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_cache_reserve_instance_cache_reserve_instance_args_doc}
/// The set of arguments for CacheReserveInstance.
/// {@endtemplate}
/// {@macro pulumi_esa_cache_reserve_instance_cache_reserve_instance_args_doc}
class CacheReserveInstanceArgs {
  /// Automatic payment.
  final pulumi.Input<bool>? autoPay;
  /// Whether to auto-renew:
  final pulumi.Input<bool>? autoRenew;
  /// Cache holding area
  /// - `HK`: Hong Kong, China
  /// - `CN`: Mainland China
  final pulumi.Input<String>? crRegion;
  /// Specifies whether to enable auto payment.
  final pulumi.Input<String> paymentType;
  /// Purchase period (unit: month).
  final pulumi.Input<int>? period;
  /// Cache retention specification (unit: GB).
  final pulumi.Input<int>? quotaGb;

  /// Creates a new [CacheReserveInstanceArgs].
  /// [autoPay] Automatic payment.
  /// [autoRenew] Whether to auto-renew:
  /// [crRegion] Cache holding area
  /// [paymentType] Specifies whether to enable auto payment.
  /// [period] Purchase period (unit: month).
  /// [quotaGb] Cache retention specification (unit: GB).
  CacheReserveInstanceArgs({
    pulumi.Output<bool>? autoPay,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<String>? crRegion,
    required pulumi.Output<String> paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<int>? quotaGb,
  }) :
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      crRegion = pulumi.Input.asOptionalInput<String>(crRegion),
      paymentType = pulumi.Input.asInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      quotaGb = pulumi.Input.asOptionalInput<int>(quotaGb);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'crRegion': ?crRegion,
      'paymentType': paymentType,
      'period': ?period,
      'quotaGb': ?quotaGb,
    };
  }

  factory CacheReserveInstanceArgs.fromMap(Map<String, dynamic> map) {
    return CacheReserveInstanceArgs(
      autoPay: map['autoPay'] == null ? null : pulumi.Output.create<bool>(map['autoPay'] as bool),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      crRegion: map['crRegion'] == null ? null : pulumi.Output.create<String>(map['crRegion'] as String),
      paymentType: pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      quotaGb: map['quotaGb'] == null ? null : pulumi.Output.create<int>(map['quotaGb'] as int),
    );
  }
}


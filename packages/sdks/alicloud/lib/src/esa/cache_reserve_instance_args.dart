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
    this.autoPay,
    this.autoRenew,
    this.crRegion,
    required this.paymentType,
    this.period,
    this.quotaGb,
  });

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
      autoPay: (() { final guardedValue = map['autoPay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      crRegion: (() { final guardedValue = map['crRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      quotaGb: (() { final guardedValue = map['quotaGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}


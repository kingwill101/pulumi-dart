// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CacheReserveInstance resources.
class CacheReserveInstanceState {
  /// Automatic payment.
  final pulumi.Input<bool>? autoPay;
  /// Whether to auto-renew:
  final pulumi.Input<bool>? autoRenew;
  /// Cache holding area
  /// - `HK`: Hong Kong, China
  /// - `CN`: Mainland China
  final pulumi.Input<String>? crRegion;
  /// Instance purchase time.
  final pulumi.Input<String>? createTime;
  /// Specifies whether to enable auto payment.
  final pulumi.Input<String>? paymentType;
  /// Purchase period (unit: month).
  final pulumi.Input<int>? period;
  /// Cache retention specification (unit: GB).
  final pulumi.Input<int>? quotaGb;
  /// The status of the cache reserve instance. , it is unavailable.
  final pulumi.Input<String>? status;

  /// Creates a new [CacheReserveInstanceState].
  /// [autoPay] Automatic payment.
  /// [autoRenew] Whether to auto-renew:
  /// [crRegion] Cache holding area
  /// [createTime] Instance purchase time.
  /// [paymentType] Specifies whether to enable auto payment.
  /// [period] Purchase period (unit: month).
  /// [quotaGb] Cache retention specification (unit: GB).
  /// [status] The status of the cache reserve instance. , it is unavailable.
  CacheReserveInstanceState({
    this.autoPay,
    this.autoRenew,
    this.crRegion,
    this.createTime,
    this.paymentType,
    this.period,
    this.quotaGb,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPay': ?autoPay,
      'autoRenew': ?autoRenew,
      'crRegion': ?crRegion,
      'createTime': ?createTime,
      'paymentType': ?paymentType,
      'period': ?period,
      'quotaGb': ?quotaGb,
      'status': ?status,
    };
  }

  factory CacheReserveInstanceState.fromMap(Map<String, dynamic> map) {
    return CacheReserveInstanceState(
      autoPay: map['autoPay'] == null ? null : (map['autoPay']! as bool).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew']! as bool).input(),
      crRegion: map['crRegion'] == null ? null : (map['crRegion']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as int).input(),
      quotaGb: map['quotaGb'] == null ? null : (map['quotaGb']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}


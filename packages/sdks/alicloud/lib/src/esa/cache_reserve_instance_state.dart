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
    pulumi.Output<bool>? autoPay,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<String>? crRegion,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<int>? quotaGb,
    pulumi.Output<String>? status,
  }) :
      autoPay = pulumi.Input.asOptionalInput<bool>(autoPay),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      crRegion = pulumi.Input.asOptionalInput<String>(crRegion),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      quotaGb = pulumi.Input.asOptionalInput<int>(quotaGb),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      autoPay: map['autoPay'] == null ? null : pulumi.Output.create<bool>(map['autoPay'] as bool),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      crRegion: map['crRegion'] == null ? null : pulumi.Output.create<String>(map['crRegion'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      quotaGb: map['quotaGb'] == null ? null : pulumi.Output.create<int>(map['quotaGb'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}


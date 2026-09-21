// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReservedInstanceRecurringCharge {
  /// Amount of the recurring charge.
  final pulumi.Input<int?>? recurringChargeAmount;
  /// Frequency of the recurring charge.
  final pulumi.Input<String?>? recurringChargeFrequency;

  /// Creates a new [ReservedInstanceRecurringCharge].
  /// [recurringChargeAmount] Amount of the recurring charge.
  /// [recurringChargeFrequency] Frequency of the recurring charge.
  const ReservedInstanceRecurringCharge({
    this.recurringChargeAmount,
    this.recurringChargeFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurringChargeAmount': ?recurringChargeAmount,
      'recurringChargeFrequency': ?recurringChargeFrequency,
    };
  }

  factory ReservedInstanceRecurringCharge.fromMap(Map<String, dynamic> map) {
    return ReservedInstanceRecurringCharge(
      recurringChargeAmount: (() { final guardedValue = map['recurringChargeAmount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      recurringChargeFrequency: (() { final guardedValue = map['recurringChargeFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReservedInstanceRecurringCharge {
  final pulumi.Input<int>? recurringChargeAmount;
  final pulumi.Input<String>? recurringChargeFrequency;

  /// Creates a new [ReservedInstanceRecurringCharge].
  /// [recurringChargeAmount] Optional.
  /// [recurringChargeFrequency] Optional.
  ReservedInstanceRecurringCharge({
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
      recurringChargeAmount: map['recurringChargeAmount'] == null ? null : (map['recurringChargeAmount'] as int).input(),
      recurringChargeFrequency: map['recurringChargeFrequency'] == null ? null : (map['recurringChargeFrequency'] as String).input(),
    );
  }
}


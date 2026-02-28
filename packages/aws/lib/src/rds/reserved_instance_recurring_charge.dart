// ignore_for_file: unused_element, unnecessary_cast

class ReservedInstanceRecurringCharge {
  final int? recurringChargeAmount;
  final String? recurringChargeFrequency;

  /// Creates a new [ReservedInstanceRecurringCharge].
  /// [recurringChargeAmount] Optional.
  /// [recurringChargeFrequency] Optional.
  ReservedInstanceRecurringCharge({
    this.recurringChargeAmount,
    this.recurringChargeFrequency,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final recurringChargeAmountValue = recurringChargeAmount;
    if (recurringChargeAmountValue != null) {
      map['recurringChargeAmount'] = recurringChargeAmountValue;
    }
    final recurringChargeFrequencyValue = recurringChargeFrequency;
    if (recurringChargeFrequencyValue != null) {
      map['recurringChargeFrequency'] = recurringChargeFrequencyValue;
    }
    return map;
  }

  factory ReservedInstanceRecurringCharge.fromMap(Map<String, dynamic> map) {
    return ReservedInstanceRecurringCharge(
      recurringChargeAmount: map['recurringChargeAmount'] == null
          ? null
          : map['recurringChargeAmount'] as int,
      recurringChargeFrequency: map['recurringChargeFrequency'] == null
          ? null
          : map['recurringChargeFrequency'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


class ReservedCacheNodeRecurringCharge {
  final double recurringChargeAmount;
  final String recurringChargeFrequency;

  /// Creates a new [ReservedCacheNodeRecurringCharge].
  /// [recurringChargeAmount] Required.
  /// [recurringChargeFrequency] Required.
  ReservedCacheNodeRecurringCharge({
    required this.recurringChargeAmount,
    required this.recurringChargeFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'recurringChargeAmount': recurringChargeAmount,
      'recurringChargeFrequency': recurringChargeFrequency,
    };
  }

  factory ReservedCacheNodeRecurringCharge.fromMap(Map<String, dynamic> map) {
    return ReservedCacheNodeRecurringCharge(
      recurringChargeAmount: map['recurringChargeAmount'] as double,
      recurringChargeFrequency: map['recurringChargeFrequency'] as String,
    );
  }
}


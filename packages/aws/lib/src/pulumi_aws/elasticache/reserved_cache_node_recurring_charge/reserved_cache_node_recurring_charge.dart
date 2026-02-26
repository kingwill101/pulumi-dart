// ignore_for_file: unused_element, unnecessary_cast

class ReservedCacheNodeRecurringCharge {
  final double recurringChargeAmount;
  final String recurringChargeFrequency;

  ReservedCacheNodeRecurringCharge({
    required this.recurringChargeAmount,
    required this.recurringChargeFrequency,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['recurringChargeAmount'] = recurringChargeAmount;
    map['recurringChargeFrequency'] = recurringChargeFrequency;
    return map;
  }

  factory ReservedCacheNodeRecurringCharge.fromMap(Map<String, dynamic> map) {
    return ReservedCacheNodeRecurringCharge(
      recurringChargeAmount: map['recurringChargeAmount'] as double,
      recurringChargeFrequency: map['recurringChargeFrequency'] as String,
    );
  }
}

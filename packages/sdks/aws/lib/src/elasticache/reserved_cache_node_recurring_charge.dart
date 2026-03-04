// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReservedCacheNodeRecurringCharge {
  final pulumi.Input<double> recurringChargeAmount;
  final pulumi.Input<String> recurringChargeFrequency;

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
      recurringChargeAmount: pulumi.Input.fromValue(
        map['recurringChargeAmount'] as double,
      ),
      recurringChargeFrequency: pulumi.Input.fromValue(
        map['recurringChargeFrequency'] as String,
      ),
    );
  }
}

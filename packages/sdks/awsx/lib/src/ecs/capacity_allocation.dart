// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CapacityAllocation {
  /// Number of desired tasks allocated here before weights are applied. Only one provider may
  /// specify a positive base. Does not increase desiredCount or guarantee healthy capacity.
  ///
  /// Default - 0.
  final pulumi.Input<double?>? base;
  /// Relative share of tasks remaining after the base. Zero allocates only the base tasks. At least
  /// one selected provider must have a positive weight. Order does not imply priority.
  ///
  /// Default - 1.
  final pulumi.Input<double?>? weight;

  /// Creates a new [CapacityAllocation].
  /// [base] Number of desired tasks allocated here before weights are applied. Only one provider may
  /// [weight] Relative share of tasks remaining after the base. Zero allocates only the base tasks. At least
  const CapacityAllocation({
    this.base,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'base': ?base,
      'weight': ?weight,
    };
  }

  factory CapacityAllocation.fromMap(Map<String, dynamic> map) {
    return CapacityAllocation(
      base: (() { final guardedValue = map['base']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}

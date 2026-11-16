// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InferenceComponentSpecificationSchedulingConfigAvailabilityZoneBalance {
  /// How strictly the AZ balance constraint is enforced. Valid values: `PERMISSIVE`.
  final pulumi.Input<String> enforcementMode;
  /// Maximum allowed difference in copy count between any two Availability Zones. Defaults to `0`, which the service applies but does not report, so the value stays absent from state unless configured.
  final pulumi.Input<int?>? maxImbalance;

  /// Creates a new [InferenceComponentSpecificationSchedulingConfigAvailabilityZoneBalance].
  /// [enforcementMode] How strictly the AZ balance constraint is enforced. Valid values: `PERMISSIVE`.
  /// [maxImbalance] Maximum allowed difference in copy count between any two Availability Zones. Defaults to `0`, which the service applies but does not report, so the value stays absent from state unless configured.
  const InferenceComponentSpecificationSchedulingConfigAvailabilityZoneBalance({
    required this.enforcementMode,
    this.maxImbalance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcementMode': enforcementMode,
      'maxImbalance': ?maxImbalance,
    };
  }

  factory InferenceComponentSpecificationSchedulingConfigAvailabilityZoneBalance.fromMap(Map<String, dynamic> map) {
    return InferenceComponentSpecificationSchedulingConfigAvailabilityZoneBalance(
      enforcementMode: pulumi.Input.fromValue(map['enforcementMode'] as String),
      maxImbalance: (() { final guardedValue = map['maxImbalance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

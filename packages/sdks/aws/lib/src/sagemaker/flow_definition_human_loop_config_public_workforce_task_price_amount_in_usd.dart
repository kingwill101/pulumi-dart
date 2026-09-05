// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd {
  /// The fractional portion, in cents, of the amount. Valid value range between `0` and `99`.
  final pulumi.Input<int?>? cents;
  /// The whole number of dollars in the amount. Valid value range between `0` and `2`.
  final pulumi.Input<int?>? dollars;
  /// Fractions of a cent, in tenths. Valid value range between `0` and `9`.
  final pulumi.Input<int?>? tenthFractionsOfACent;

  /// Creates a new [FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd].
  /// [cents] The fractional portion, in cents, of the amount. Valid value range between `0` and `99`.
  /// [dollars] The whole number of dollars in the amount. Valid value range between `0` and `2`.
  /// [tenthFractionsOfACent] Fractions of a cent, in tenths. Valid value range between `0` and `9`.
  const FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd({
    this.cents,
    this.dollars,
    this.tenthFractionsOfACent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cents': ?cents,
      'dollars': ?dollars,
      'tenthFractionsOfACent': ?tenthFractionsOfACent,
    };
  }

  factory FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd.fromMap(Map<String, dynamic> map) {
    return FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd(
      cents: (() { final guardedValue = map['cents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      dollars: (() { final guardedValue = map['dollars']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      tenthFractionsOfACent: (() { final guardedValue = map['tenthFractionsOfACent']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}

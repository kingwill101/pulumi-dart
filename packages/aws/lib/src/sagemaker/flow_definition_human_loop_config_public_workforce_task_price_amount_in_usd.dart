// ignore_for_file: unused_element, unnecessary_cast

class FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd {
  /// The fractional portion, in cents, of the amount. Valid value range between `0` and `99`.
  final int? cents;

  /// The whole number of dollars in the amount. Valid value range between `0` and `2`.
  final int? dollars;

  /// Fractions of a cent, in tenths. Valid value range between `0` and `9`.
  final int? tenthFractionsOfACent;

  /// Creates a new [FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd].
  /// [cents] The fractional portion, in cents, of the amount. Valid value range between `0` and `99`.
  /// [dollars] The whole number of dollars in the amount. Valid value range between `0` and `2`.
  /// [tenthFractionsOfACent] Fractions of a cent, in tenths. Valid value range between `0` and `9`.
  FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd({
    this.cents,
    this.dollars,
    this.tenthFractionsOfACent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final centsValue = cents;
    if (centsValue != null) {
      map['cents'] = centsValue;
    }
    final dollarsValue = dollars;
    if (dollarsValue != null) {
      map['dollars'] = dollarsValue;
    }
    final tenthFractionsOfACentValue = tenthFractionsOfACent;
    if (tenthFractionsOfACentValue != null) {
      map['tenthFractionsOfACent'] = tenthFractionsOfACentValue;
    }
    return map;
  }

  factory FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd.fromMap(
      Map<String, dynamic> map) {
    return FlowDefinitionHumanLoopConfigPublicWorkforceTaskPriceAmountInUsd(
      cents: map['cents'] == null ? null : map['cents'] as int,
      dollars: map['dollars'] == null ? null : map['dollars'] as int,
      tenthFractionsOfACent: map['tenthFractionsOfACent'] == null
          ? null
          : map['tenthFractionsOfACent'] as int,
    );
  }
}

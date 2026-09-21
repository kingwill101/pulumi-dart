// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd {
  /// Fractional portion, in cents, of the amount.
  final pulumi.Input<int?>? cents;
  /// Whole number of dollars in the amount.
  final pulumi.Input<int?>? dollars;
  /// Fractions of a cent, in tenths.
  final pulumi.Input<int?>? tenthFractionsOfACent;

  /// Creates a new [LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd].
  /// [cents] Fractional portion, in cents, of the amount.
  /// [dollars] Whole number of dollars in the amount.
  /// [tenthFractionsOfACent] Fractions of a cent, in tenths.
  const LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd({
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

  factory LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd.fromMap(Map<String, dynamic> map) {
    return LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd(
      cents: (() { final guardedValue = map['cents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      dollars: (() { final guardedValue = map['dollars']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      tenthFractionsOfACent: (() { final guardedValue = map['tenthFractionsOfACent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd {
  /// Fractional portion, in cents, of the amount.
  final pulumi.Input<int>? cents;
  /// Whole number of dollars in the amount.
  final pulumi.Input<int>? dollars;
  /// Fractions of a cent, in tenths.
  final pulumi.Input<int>? tenthFractionsOfACent;

  /// Creates a new [LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd].
  /// [cents] Fractional portion, in cents, of the amount.
  /// [dollars] Whole number of dollars in the amount.
  /// [tenthFractionsOfACent] Fractions of a cent, in tenths.
  LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd({
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
      cents: map['cents'] == null ? null : (map['cents'] as int).input(),
      dollars: map['dollars'] == null ? null : (map['dollars'] as int).input(),
      tenthFractionsOfACent: map['tenthFractionsOfACent'] == null ? null : (map['tenthFractionsOfACent'] as int).input(),
    );
  }
}


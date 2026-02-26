// ignore_for_file: unused_element, unnecessary_cast

class LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd {
  /// Fractional portion, in cents, of the amount.
  final int? cents;

  /// Whole number of dollars in the amount.
  final int? dollars;

  /// Fractions of a cent, in tenths.
  final int? tenthFractionsOfACent;

  LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd({
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

  factory LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd.fromMap(
      Map<String, dynamic> map) {
    return LabelingJobHumanTaskConfigPublicWorkforceTaskPriceAmountInUsd(
      cents: map['cents'] == null ? null : map['cents'] as int,
      dollars: map['dollars'] == null ? null : map['dollars'] as int,
      tenthFractionsOfACent: map['tenthFractionsOfACent'] == null
          ? null
          : map['tenthFractionsOfACent'] as int,
    );
  }
}

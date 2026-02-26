// ignore_for_file: unused_element, unnecessary_cast

class FutureReservationCommitmentInfo {
  /// name of the commitment where capacity is being delivered to.
  final String? commitmentName;

  /// Indicates if a Commitment needs to be created as part of FR delivery. If this field is not present, then no commitment needs to be created.
  /// Possible values are: `INVALID`, `THIRTY_SIX_MONTH`, `TWELVE_MONTH`.
  final String? commitmentPlan;

  /// Only applicable if FR is delivering to the same reservation. If set, all parent commitments will be extended to match the end date of the plan for this commitment.
  /// Possible values are: `EXTEND`.
  final String? previousCommitmentTerms;

  FutureReservationCommitmentInfo({
    this.commitmentName,
    this.commitmentPlan,
    this.previousCommitmentTerms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commitmentNameValue = commitmentName;
    if (commitmentNameValue != null) {
      map['commitmentName'] = commitmentNameValue;
    }
    final commitmentPlanValue = commitmentPlan;
    if (commitmentPlanValue != null) {
      map['commitmentPlan'] = commitmentPlanValue;
    }
    final previousCommitmentTermsValue = previousCommitmentTerms;
    if (previousCommitmentTermsValue != null) {
      map['previousCommitmentTerms'] = previousCommitmentTermsValue;
    }
    return map;
  }

  factory FutureReservationCommitmentInfo.fromMap(Map<String, dynamic> map) {
    return FutureReservationCommitmentInfo(
      commitmentName: map['commitmentName'] == null
          ? null
          : map['commitmentName'] as String,
      commitmentPlan: map['commitmentPlan'] == null
          ? null
          : map['commitmentPlan'] as String,
      previousCommitmentTerms: map['previousCommitmentTerms'] == null
          ? null
          : map['previousCommitmentTerms'] as String,
    );
  }
}

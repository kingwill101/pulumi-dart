// ignore_for_file: unused_element, unnecessary_cast


/// Term Commitment Information.
class TermCommitmentInformationResponse {
  /// Number of Days Pending for Term Commitment
  final int pendingDaysForTerm;
  /// Term Commitment Type
  final String termCommitmentType;
  /// Term Commitment Duration. Currently Supporting P365D, P1095D
  final String termCommitmentTypeDuration;

  /// Creates a new [TermCommitmentInformationResponse].
  /// [pendingDaysForTerm] Number of Days Pending for Term Commitment
  /// [termCommitmentType] Term Commitment Type
  /// [termCommitmentTypeDuration] Term Commitment Duration. Currently Supporting P365D, P1095D
  TermCommitmentInformationResponse({
    required this.pendingDaysForTerm,
    required this.termCommitmentType,
    required this.termCommitmentTypeDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pendingDaysForTerm': pendingDaysForTerm,
      'termCommitmentType': termCommitmentType,
      'termCommitmentTypeDuration': termCommitmentTypeDuration,
    };
  }

  factory TermCommitmentInformationResponse.fromMap(Map<String, dynamic> map) {
    return TermCommitmentInformationResponse(
      pendingDaysForTerm: map['pendingDaysForTerm'] as int,
      termCommitmentType: map['termCommitmentType'] as String,
      termCommitmentTypeDuration: map['termCommitmentTypeDuration'] as String,
    );
  }
}


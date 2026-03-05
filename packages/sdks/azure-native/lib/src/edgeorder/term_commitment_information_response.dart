// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Term Commitment Information.
class TermCommitmentInformationResponse {
  /// Number of Days Pending for Term Commitment
  final pulumi.Input<int> pendingDaysForTerm;
  /// Term Commitment Type
  final pulumi.Input<String> termCommitmentType;
  /// Term Commitment Duration. Currently Supporting P365D, P1095D
  final pulumi.Input<String> termCommitmentTypeDuration;

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
      pendingDaysForTerm: pulumi.Input.fromValue(map['pendingDaysForTerm'] as int),
      termCommitmentType: pulumi.Input.fromValue(map['termCommitmentType'] as String),
      termCommitmentTypeDuration: pulumi.Input.fromValue(map['termCommitmentTypeDuration'] as String),
    );
  }
}


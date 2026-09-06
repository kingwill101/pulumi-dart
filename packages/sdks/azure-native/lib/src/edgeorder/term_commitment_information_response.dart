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
    pulumi.Input<int>? pendingDaysForTerm,
    required this.termCommitmentType,
    required this.termCommitmentTypeDuration,
  }) : pendingDaysForTerm = pendingDaysForTerm ?? pulumi.Input.fromValue(0);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pendingDaysForTerm': pendingDaysForTerm,
      'termCommitmentType': termCommitmentType,
      'termCommitmentTypeDuration': termCommitmentTypeDuration,
    };
  }

  factory TermCommitmentInformationResponse.fromMap(Map<String, dynamic> map) {
    return TermCommitmentInformationResponse(
      pendingDaysForTerm: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['pendingDaysForTerm'])),
      termCommitmentType: pulumi.Input.fromValue(map['termCommitmentType'] as String),
      termCommitmentTypeDuration: pulumi.Input.fromValue(map['termCommitmentTypeDuration'] as String),
    );
  }
}

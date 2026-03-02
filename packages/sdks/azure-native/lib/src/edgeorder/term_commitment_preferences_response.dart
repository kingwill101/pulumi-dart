// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Term Commitment preference received from customer.
class TermCommitmentPreferencesResponse {
  /// Customer preferred Term Duration.
  final pulumi.Input<String>? preferredTermCommitmentDuration;
  /// Term Commitment Type
  final pulumi.Input<String> preferredTermCommitmentType;

  /// Creates a new [TermCommitmentPreferencesResponse].
  /// [preferredTermCommitmentDuration] Customer preferred Term Duration.
  /// [preferredTermCommitmentType] Term Commitment Type
  TermCommitmentPreferencesResponse({
    this.preferredTermCommitmentDuration,
    required this.preferredTermCommitmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredTermCommitmentDuration': ?preferredTermCommitmentDuration,
      'preferredTermCommitmentType': preferredTermCommitmentType,
    };
  }

  factory TermCommitmentPreferencesResponse.fromMap(Map<String, dynamic> map) {
    return TermCommitmentPreferencesResponse(
      preferredTermCommitmentDuration: map['preferredTermCommitmentDuration'] == null ? null : (map['preferredTermCommitmentDuration'] as String).input(),
      preferredTermCommitmentType: (map['preferredTermCommitmentType'] as String).input(),
    );
  }
}


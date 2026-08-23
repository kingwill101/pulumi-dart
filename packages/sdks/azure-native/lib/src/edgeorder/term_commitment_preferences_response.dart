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
  const TermCommitmentPreferencesResponse({
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
      preferredTermCommitmentDuration: (() { final guardedValue = map['preferredTermCommitmentDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredTermCommitmentType: pulumi.Input.fromValue(map['preferredTermCommitmentType'] as String),
    );
  }
}

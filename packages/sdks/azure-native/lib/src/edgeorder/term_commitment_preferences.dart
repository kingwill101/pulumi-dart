// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Term Commitment preference received from customer.
class TermCommitmentPreferences {
  /// Customer preferred Term Duration.
  final pulumi.Input<String>? preferredTermCommitmentDuration;
  /// Term Commitment Type
  final pulumi.Input<String> preferredTermCommitmentType;

  /// Creates a new [TermCommitmentPreferences].
  /// [preferredTermCommitmentDuration] Customer preferred Term Duration.
  /// [preferredTermCommitmentType] Term Commitment Type
  TermCommitmentPreferences({
    this.preferredTermCommitmentDuration,
    required this.preferredTermCommitmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preferredTermCommitmentDuration': ?preferredTermCommitmentDuration,
      'preferredTermCommitmentType': preferredTermCommitmentType,
    };
  }

  factory TermCommitmentPreferences.fromMap(Map<String, dynamic> map) {
    return TermCommitmentPreferences(
      preferredTermCommitmentDuration: map['preferredTermCommitmentDuration'] == null ? null : (map['preferredTermCommitmentDuration']! as String).input(),
      preferredTermCommitmentType: (map['preferredTermCommitmentType'] as String).input(),
    );
  }
}


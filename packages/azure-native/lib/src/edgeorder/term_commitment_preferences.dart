// ignore_for_file: unused_element, unnecessary_cast


/// Term Commitment preference received from customer.
class TermCommitmentPreferences {
  /// Customer preferred Term Duration.
  final String? preferredTermCommitmentDuration;
  /// Term Commitment Type
  final String preferredTermCommitmentType;

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
      preferredTermCommitmentDuration: map['preferredTermCommitmentDuration'] == null ? null : map['preferredTermCommitmentDuration'] as String,
      preferredTermCommitmentType: map['preferredTermCommitmentType'] as String,
    );
  }
}


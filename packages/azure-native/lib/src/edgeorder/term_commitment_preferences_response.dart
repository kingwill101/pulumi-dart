// ignore_for_file: unused_element, unnecessary_cast


/// Term Commitment preference received from customer.
class TermCommitmentPreferencesResponse {
  /// Customer preferred Term Duration.
  final String? preferredTermCommitmentDuration;
  /// Term Commitment Type
  final String preferredTermCommitmentType;

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
      preferredTermCommitmentDuration: map['preferredTermCommitmentDuration'] == null ? null : map['preferredTermCommitmentDuration'] as String,
      preferredTermCommitmentType: map['preferredTermCommitmentType'] as String,
    );
  }
}


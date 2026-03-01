// ignore_for_file: unused_element, unnecessary_cast

/// Score is calculated from of all elements in the data profile. A higher level means the data is more sensitive.
class GooglePrivacyDlpV2SensitivityScoreResponse {
  /// The sensitivity score applied to the resource.
  final String score;

  /// Creates a new [GooglePrivacyDlpV2SensitivityScoreResponse].
  /// [score] The sensitivity score applied to the resource.
  GooglePrivacyDlpV2SensitivityScoreResponse({required this.score});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'score': score};
  }

  factory GooglePrivacyDlpV2SensitivityScoreResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GooglePrivacyDlpV2SensitivityScoreResponse(
      score: map['score'] as String,
    );
  }
}

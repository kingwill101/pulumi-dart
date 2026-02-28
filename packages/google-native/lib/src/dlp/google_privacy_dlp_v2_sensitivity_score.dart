// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_sensitivity_score_score.dart';

/// Score is calculated from of all elements in the data profile. A higher level means the data is more sensitive.
class GooglePrivacyDlpV2SensitivityScore {
  /// The sensitivity score applied to the resource.
  final GooglePrivacyDlpV2SensitivityScoreScore? score;

  /// Creates a new [GooglePrivacyDlpV2SensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  GooglePrivacyDlpV2SensitivityScore({
    this.score,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final scoreValue = score;
    if (scoreValue != null) {
      map['score'] = scoreValue.value;
    }
    return map;
  }

  factory GooglePrivacyDlpV2SensitivityScore.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2SensitivityScore(
      score: map['score'] == null
          ? null
          : GooglePrivacyDlpV2SensitivityScoreScore.fromValue(
              map['score'] as String),
    );
  }
}

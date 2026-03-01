// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_pub_sub_condition_minimum_risk_score.dart';
import 'google_privacy_dlp_v2_pub_sub_condition_minimum_sensitivity_score.dart';

/// A condition consisting of a value.
class GooglePrivacyDlpV2PubSubCondition {
  /// The minimum data risk score that triggers the condition.
  final GooglePrivacyDlpV2PubSubConditionMinimumRiskScore? minimumRiskScore;

  /// The minimum sensitivity level that triggers the condition.
  final GooglePrivacyDlpV2PubSubConditionMinimumSensitivityScore?
  minimumSensitivityScore;

  /// Creates a new [GooglePrivacyDlpV2PubSubCondition].
  /// [minimumRiskScore] The minimum data risk score that triggers the condition.
  /// [minimumSensitivityScore] The minimum sensitivity level that triggers the condition.
  GooglePrivacyDlpV2PubSubCondition({
    this.minimumRiskScore,
    this.minimumSensitivityScore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumRiskScore': ?minimumRiskScore == null
          ? null
          : minimumRiskScore!.value,
      'minimumSensitivityScore': ?minimumSensitivityScore == null
          ? null
          : minimumSensitivityScore!.value,
    };
  }

  factory GooglePrivacyDlpV2PubSubCondition.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PubSubCondition(
      minimumRiskScore: map['minimumRiskScore'] == null
          ? null
          : GooglePrivacyDlpV2PubSubConditionMinimumRiskScore.fromValue(
              map['minimumRiskScore'] as String,
            ),
      minimumSensitivityScore: map['minimumSensitivityScore'] == null
          ? null
          : GooglePrivacyDlpV2PubSubConditionMinimumSensitivityScore.fromValue(
              map['minimumSensitivityScore'] as String,
            ),
    );
  }
}

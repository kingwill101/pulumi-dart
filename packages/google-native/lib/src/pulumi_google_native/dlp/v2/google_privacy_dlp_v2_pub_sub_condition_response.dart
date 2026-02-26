// ignore_for_file: unused_element, unnecessary_cast

/// A condition consisting of a value.
class GooglePrivacyDlpV2PubSubConditionResponse {
  /// The minimum data risk score that triggers the condition.
  final String minimumRiskScore;

  /// The minimum sensitivity level that triggers the condition.
  final String minimumSensitivityScore;

  GooglePrivacyDlpV2PubSubConditionResponse({
    required this.minimumRiskScore,
    required this.minimumSensitivityScore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minimumRiskScore'] = minimumRiskScore;
    map['minimumSensitivityScore'] = minimumSensitivityScore;
    return map;
  }

  factory GooglePrivacyDlpV2PubSubConditionResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PubSubConditionResponse(
      minimumRiskScore: map['minimumRiskScore'] as String,
      minimumSensitivityScore: map['minimumSensitivityScore'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition {
  /// The minimum data risk score that triggers the condition.
  /// Possible values are: `HIGH`, `MEDIUM_OR_HIGH`.
  final String? minimumRiskScore;

  /// The minimum sensitivity level that triggers the condition.
  /// Possible values are: `HIGH`, `MEDIUM_OR_HIGH`.
  final String? minimumSensitivityScore;

  /// Creates a new [PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition].
  /// [minimumRiskScore] The minimum data risk score that triggers the condition.
  /// [minimumSensitivityScore] The minimum sensitivity level that triggers the condition.
  PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition({
    this.minimumRiskScore,
    this.minimumSensitivityScore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final minimumRiskScoreValue = minimumRiskScore;
    if (minimumRiskScoreValue != null) {
      map['minimumRiskScore'] = minimumRiskScoreValue;
    }
    final minimumSensitivityScoreValue = minimumSensitivityScore;
    if (minimumSensitivityScoreValue != null) {
      map['minimumSensitivityScore'] = minimumSensitivityScoreValue;
    }
    return map;
  }

  factory PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionPubSubNotificationPubsubConditionExpressionsCondition(
      minimumRiskScore: map['minimumRiskScore'] == null
          ? null
          : map['minimumRiskScore'] as String,
      minimumSensitivityScore: map['minimumSensitivityScore'] == null
          ? null
          : map['minimumSensitivityScore'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypeSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`.
  final String score;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypeSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  PreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypeSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'score': score};
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypeSensitivityScore.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetInfoTypeSensitivityScore(
      score: map['score'] as String,
    );
  }
}

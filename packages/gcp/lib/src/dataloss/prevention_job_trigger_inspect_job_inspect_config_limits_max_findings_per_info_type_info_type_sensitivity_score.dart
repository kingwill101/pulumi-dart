// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`.
  final String score;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'score': score};
  }

  factory PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfigLimitsMaxFindingsPerInfoTypeInfoTypeSensitivityScore(
      score: map['score'] as String,
    );
  }
}

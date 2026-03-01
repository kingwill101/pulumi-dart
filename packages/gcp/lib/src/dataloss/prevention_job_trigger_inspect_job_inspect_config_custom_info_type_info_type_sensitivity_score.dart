// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeInfoTypeSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`.
  final String score;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeInfoTypeSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeInfoTypeSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'score': score};
  }

  factory PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeInfoTypeSensitivityScore.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeInfoTypeSensitivityScore(
      score: map['score'] as String,
    );
  }
}

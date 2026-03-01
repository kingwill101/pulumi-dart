// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobInspectConfigInfoTypeSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`.
  final String score;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigInfoTypeSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  PreventionJobTriggerInspectJobInspectConfigInfoTypeSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'score': score};
  }

  factory PreventionJobTriggerInspectJobInspectConfigInfoTypeSensitivityScore.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfigInfoTypeSensitivityScore(
      score: map['score'] as String,
    );
  }
}

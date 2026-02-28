// ignore_for_file: unused_element, unnecessary_cast

class PreventionInspectTemplateInspectConfigRuleSetInfoTypeSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`.
  final String score;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSetInfoTypeSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  PreventionInspectTemplateInspectConfigRuleSetInfoTypeSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['score'] = score;
    return map;
  }

  factory PreventionInspectTemplateInspectConfigRuleSetInfoTypeSensitivityScore.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetInfoTypeSensitivityScore(
      score: map['score'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


class PreventionInspectTemplateInspectConfigCustomInfoTypeInfoTypeSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`.
  final String score;

  /// Creates a new [PreventionInspectTemplateInspectConfigCustomInfoTypeInfoTypeSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  PreventionInspectTemplateInspectConfigCustomInfoTypeInfoTypeSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'score': score,
    };
  }

  factory PreventionInspectTemplateInspectConfigCustomInfoTypeInfoTypeSensitivityScore.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigCustomInfoTypeInfoTypeSensitivityScore(
      score: map['score'] as String,
    );
  }
}


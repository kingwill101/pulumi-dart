// ignore_for_file: unused_element, unnecessary_cast

class PreventionInspectTemplateInspectConfigCustomInfoTypeSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`.
  final String score;

  /// Creates a new [PreventionInspectTemplateInspectConfigCustomInfoTypeSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  PreventionInspectTemplateInspectConfigCustomInfoTypeSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['score'] = score;
    return map;
  }

  factory PreventionInspectTemplateInspectConfigCustomInfoTypeSensitivityScore.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigCustomInfoTypeSensitivityScore(
      score: map['score'] as String,
    );
  }
}

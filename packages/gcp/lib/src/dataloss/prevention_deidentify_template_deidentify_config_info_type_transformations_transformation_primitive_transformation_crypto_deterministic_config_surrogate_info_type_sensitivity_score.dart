// ignore_for_file: unused_element, unnecessary_cast

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScore {
  /// The sensitivity score applied to the resource.
  /// Possible values are: `SENSITIVITY_LOW`, `SENSITIVITY_MODERATE`, `SENSITIVITY_HIGH`.
  final String score;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScore].
  /// [score] The sensitivity score applied to the resource.
  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScore({
    required this.score,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'score': score};
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScore.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigSurrogateInfoTypeSensitivityScore(
      score: map['score'] as String,
    );
  }
}

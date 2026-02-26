// ignore_for_file: unused_element, unnecessary_cast

/// Value specification for a parameter in `DOUBLE` type.
class GoogleCloudAiplatformV1beta1StudySpecParameterSpecDoubleValueSpec {
  /// A default value for a `DOUBLE` parameter that is assumed to be a relatively good starting point. Unset value signals that there is no offered starting point. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  final double? defaultValue;

  /// Inclusive maximum value of the parameter.
  final double maxValue;

  /// Inclusive minimum value of the parameter.
  final double minValue;

  GoogleCloudAiplatformV1beta1StudySpecParameterSpecDoubleValueSpec({
    this.defaultValue,
    required this.maxValue,
    required this.minValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue;
    }
    map['maxValue'] = maxValue;
    map['minValue'] = minValue;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1StudySpecParameterSpecDoubleValueSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecParameterSpecDoubleValueSpec(
      defaultValue:
          map['defaultValue'] == null ? null : map['defaultValue'] as double,
      maxValue: map['maxValue'] as double,
      minValue: map['minValue'] as double,
    );
  }
}

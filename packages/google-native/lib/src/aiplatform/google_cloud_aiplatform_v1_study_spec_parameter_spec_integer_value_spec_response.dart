// ignore_for_file: unused_element, unnecessary_cast

/// Value specification for a parameter in `INTEGER` type.
class GoogleCloudAiplatformV1StudySpecParameterSpecIntegerValueSpecResponse {
  /// A default value for an `INTEGER` parameter that is assumed to be a relatively good starting point. Unset value signals that there is no offered starting point. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  final String defaultValue;

  /// Inclusive maximum value of the parameter.
  final String maxValue;

  /// Inclusive minimum value of the parameter.
  final String minValue;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecParameterSpecIntegerValueSpecResponse].
  /// [defaultValue] A default value for an `INTEGER` parameter that is assumed to be a relatively good starting point. Unset value signals that there is no offered starting point. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  /// [maxValue] Inclusive maximum value of the parameter.
  /// [minValue] Inclusive minimum value of the parameter.
  GoogleCloudAiplatformV1StudySpecParameterSpecIntegerValueSpecResponse({
    required this.defaultValue,
    required this.maxValue,
    required this.minValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultValue'] = defaultValue;
    map['maxValue'] = maxValue;
    map['minValue'] = minValue;
    return map;
  }

  factory GoogleCloudAiplatformV1StudySpecParameterSpecIntegerValueSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecParameterSpecIntegerValueSpecResponse(
      defaultValue: map['defaultValue'] as String,
      maxValue: map['maxValue'] as String,
      minValue: map['minValue'] as String,
    );
  }
}

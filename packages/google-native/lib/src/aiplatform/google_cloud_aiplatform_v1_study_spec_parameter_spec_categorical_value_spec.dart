// ignore_for_file: unused_element, unnecessary_cast

/// Value specification for a parameter in `CATEGORICAL` type.
class GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpec {
  /// A default value for a `CATEGORICAL` parameter that is assumed to be a relatively good starting point. Unset value signals that there is no offered starting point. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  final String? defaultValue;

  /// The list of possible categories.
  final List<String> values;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpec].
  /// [defaultValue] A default value for a `CATEGORICAL` parameter that is assumed to be a relatively good starting point. Unset value signals that there is no offered starting point. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  /// [values] The list of possible categories.
  GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpec({
    this.defaultValue,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue;
    }
    map['values'] = values;
    return map;
  }

  factory GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpec(
      defaultValue:
          map['defaultValue'] == null ? null : map['defaultValue'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

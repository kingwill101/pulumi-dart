// ignore_for_file: unused_element, unnecessary_cast

/// Value specification for a parameter in `DISCRETE` type.
class GoogleCloudAiplatformV1beta1StudySpecParameterSpecDiscreteValueSpec {
  /// A default value for a `DISCRETE` parameter that is assumed to be a relatively good starting point. Unset value signals that there is no offered starting point. It automatically rounds to the nearest feasible discrete point. Currently only supported by the Vertex AI Vizier service. Not supported by HyperparameterTuningJob or TrainingPipeline.
  final double? defaultValue;

  /// A list of possible values. The list should be in increasing order and at least 1e-10 apart. For instance, this parameter might have possible settings of 1.5, 2.5, and 4.0. This list should not contain more than 1,000 values.
  final List<double> values;

  GoogleCloudAiplatformV1beta1StudySpecParameterSpecDiscreteValueSpec({
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

  factory GoogleCloudAiplatformV1beta1StudySpecParameterSpecDiscreteValueSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1StudySpecParameterSpecDiscreteValueSpec(
      defaultValue:
          map['defaultValue'] == null ? null : map['defaultValue'] as double,
      values: (map['values'] as List).cast<double>(),
    );
  }
}

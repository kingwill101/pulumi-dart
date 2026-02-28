// ignore_for_file: unused_element, unnecessary_cast

/// Represents the spec to match categorical values from parent parameter.
class GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueConditionResponse {
  /// Matches values of the parent parameter of 'CATEGORICAL' type. All values must exist in `categorical_value_spec` of parent parameter.
  final List<String> values;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueConditionResponse].
  /// [values] Matches values of the parent parameter of 'CATEGORICAL' type. All values must exist in `categorical_value_spec` of parent parameter.
  GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueConditionResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueConditionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueConditionResponse(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

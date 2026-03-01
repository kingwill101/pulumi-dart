// ignore_for_file: unused_element, unnecessary_cast

/// Represents the spec to match integer values from parent parameter.
class GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueConditionResponse {
  /// Matches values of the parent parameter of 'INTEGER' type. All values must lie in `integer_value_spec` of parent parameter.
  final List<String> values;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueConditionResponse].
  /// [values] Matches values of the parent parameter of 'INTEGER' type. All values must lie in `integer_value_spec` of parent parameter.
  GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueConditionResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueConditionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueConditionResponse(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

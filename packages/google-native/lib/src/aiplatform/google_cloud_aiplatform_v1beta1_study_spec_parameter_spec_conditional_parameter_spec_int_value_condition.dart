// ignore_for_file: unused_element, unnecessary_cast

/// Represents the spec to match integer values from parent parameter.
class GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueCondition {
  /// Matches values of the parent parameter of 'INTEGER' type. All values must lie in `integer_value_spec` of parent parameter.
  final List<String> values;

  /// Creates a new [GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueCondition].
  /// [values] Matches values of the parent parameter of 'INTEGER' type. All values must lie in `integer_value_spec` of parent parameter.
  GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueCondition({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1StudySpecParameterSpecConditionalParameterSpecIntValueCondition(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// Represents the spec to match discrete values from parent parameter.
class GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition {
  /// Matches values of the parent parameter of 'DISCRETE' type. All values must exist in `discrete_value_spec` of parent parameter. The Epsilon of the value matching is 1e-10.
  final List<double> values;

  /// Creates a new [GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition].
  /// [values] Matches values of the parent parameter of 'DISCRETE' type. All values must exist in `discrete_value_spec` of parent parameter. The Epsilon of the value matching is 1e-10.
  GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition(
      values: (map['values'] as List).cast<double>(),
    );
  }
}

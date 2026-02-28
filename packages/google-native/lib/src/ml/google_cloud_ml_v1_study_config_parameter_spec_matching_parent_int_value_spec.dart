// ignore_for_file: unused_element, unnecessary_cast

/// Represents the spec to match integer values from parent parameter.
class GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec {
  /// Matches values of the parent parameter with type 'INTEGER'. All values must lie in `integer_value_spec` of parent parameter.
  final List<String>? values;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec].
  /// [values] Matches values of the parent parameter with type 'INTEGER'. All values must lie in `integer_value_spec` of parent parameter.
  GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec({
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpec(
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

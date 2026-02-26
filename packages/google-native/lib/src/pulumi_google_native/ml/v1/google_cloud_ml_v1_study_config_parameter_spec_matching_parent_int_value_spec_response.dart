// ignore_for_file: unused_element, unnecessary_cast

/// Represents the spec to match integer values from parent parameter.
class GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpecResponse {
  /// Matches values of the parent parameter with type 'INTEGER'. All values must lie in `integer_value_spec` of parent parameter.
  final List<String> values;

  GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpecResponse({
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['values'] = values;
    return map;
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecMatchingParentIntValueSpecResponse(
      values: (map['values'] as List).cast<String>(),
    );
  }
}

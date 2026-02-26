// ignore_for_file: unused_element, unnecessary_cast

/// The data masking policy that is used to specify data masking rule.
class DataMaskingPolicyResponse {
  /// A predefined masking expression.
  final String predefinedExpression;

  /// The name of the BigQuery routine that contains the custom masking routine, in the format of `projects/{project_number}/datasets/{dataset_id}/routines/{routine_id}`.
  final String routine;

  DataMaskingPolicyResponse({
    required this.predefinedExpression,
    required this.routine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['predefinedExpression'] = predefinedExpression;
    map['routine'] = routine;
    return map;
  }

  factory DataMaskingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return DataMaskingPolicyResponse(
      predefinedExpression: map['predefinedExpression'] as String,
      routine: map['routine'] as String,
    );
  }
}

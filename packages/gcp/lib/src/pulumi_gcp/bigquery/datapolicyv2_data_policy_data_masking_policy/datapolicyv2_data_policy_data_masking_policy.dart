// ignore_for_file: unused_element, unnecessary_cast

class Datapolicyv2DataPolicyDataMaskingPolicy {
  /// A predefined masking expression.
  /// Possible values:
  /// SHA256
  /// ALWAYS_NULL
  /// DEFAULT_MASKING_VALUE
  /// LAST_FOUR_CHARACTERS
  /// FIRST_FOUR_CHARACTERS
  /// EMAIL_MASK
  /// DATE_YEAR_MASK
  /// RANDOM_HASH
  final String? predefinedExpression;

  /// The name of the BigQuery routine that contains the custom masking
  /// routine, in the format of
  /// `projects/{project_number}/datasets/{dataset_id}/routines/{routine_id}`.
  final String? routine;

  Datapolicyv2DataPolicyDataMaskingPolicy({
    this.predefinedExpression,
    this.routine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final predefinedExpressionValue = predefinedExpression;
    if (predefinedExpressionValue != null) {
      map['predefinedExpression'] = predefinedExpressionValue;
    }
    final routineValue = routine;
    if (routineValue != null) {
      map['routine'] = routineValue;
    }
    return map;
  }

  factory Datapolicyv2DataPolicyDataMaskingPolicy.fromMap(
      Map<String, dynamic> map) {
    return Datapolicyv2DataPolicyDataMaskingPolicy(
      predefinedExpression: map['predefinedExpression'] == null
          ? null
          : map['predefinedExpression'] as String,
      routine: map['routine'] == null ? null : map['routine'] as String,
    );
  }
}

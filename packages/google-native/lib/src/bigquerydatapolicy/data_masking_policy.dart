// ignore_for_file: unused_element, unnecessary_cast

import 'data_masking_policy_predefined_expression.dart';

/// The data masking policy that is used to specify data masking rule.
class DataMaskingPolicy {
  /// A predefined masking expression.
  final DataMaskingPolicyPredefinedExpression? predefinedExpression;

  /// The name of the BigQuery routine that contains the custom masking routine, in the format of `projects/{project_number}/datasets/{dataset_id}/routines/{routine_id}`.
  final String? routine;

  /// Creates a new [DataMaskingPolicy].
  /// [predefinedExpression] A predefined masking expression.
  /// [routine] The name of the BigQuery routine that contains the custom masking routine, in the format of `projects/{project_number}/datasets/{dataset_id}/routines/{routine_id}`.
  DataMaskingPolicy({
    this.predefinedExpression,
    this.routine,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final predefinedExpressionValue = predefinedExpression;
    if (predefinedExpressionValue != null) {
      map['predefinedExpression'] = predefinedExpressionValue.value;
    }
    final routineValue = routine;
    if (routineValue != null) {
      map['routine'] = routineValue;
    }
    return map;
  }

  factory DataMaskingPolicy.fromMap(Map<String, dynamic> map) {
    return DataMaskingPolicy(
      predefinedExpression: map['predefinedExpression'] == null
          ? null
          : DataMaskingPolicyPredefinedExpression.fromValue(
              map['predefinedExpression'] as String),
      routine: map['routine'] == null ? null : map['routine'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_deidentify_template_deidentify_config_record_transformations_record_suppression_condition_expressions_conditions_condition_field.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_record_suppression_condition_expressions_conditions_condition_value.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsCondition {
  /// Field within the record this condition is evaluated against.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsConditionField
  field;

  /// Operator used to compare the field or infoType to the value.
  /// Possible values are: `EQUAL_TO`, `NOT_EQUAL_TO`, `GREATER_THAN`, `LESS_THAN`, `GREATER_THAN_OR_EQUALS`, `LESS_THAN_OR_EQUALS`, `EXISTS`.
  final String operator;

  /// Value to compare against. [Mandatory, except for EXISTS tests.]
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsConditionValue?
  value;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsCondition].
  /// [field] Field within the record this condition is evaluated against.
  /// [operator] Operator used to compare the field or infoType to the value.
  /// [value] Value to compare against. [Mandatory, except for EXISTS tests.]
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsCondition({
    required this.field,
    required this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': field.toMap(),
      'operator': operator,
      'value': ?value == null ? null : value!.toMap(),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsCondition(
      field:
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsConditionField.fromMap(
            (map['field'] as Map).cast<String, dynamic>(),
          ),
      operator: map['operator'] as String,
      value: map['value'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditionsConditionValue.fromMap(
              (map['value'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

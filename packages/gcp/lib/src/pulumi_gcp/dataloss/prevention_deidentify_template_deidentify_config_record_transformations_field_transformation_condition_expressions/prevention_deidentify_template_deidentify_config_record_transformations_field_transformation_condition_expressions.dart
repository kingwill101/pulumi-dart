// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_condition_expressions_conditions/prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_condition_expressions_conditions.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressions {
  /// Conditions to apply to the expression.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditions?
      conditions;

  /// The operator to apply to the result of conditions. Default and currently only supported value is AND.
  /// Default value is `AND`.
  /// Possible values are: `AND`.
  final String? logicalOperator;

  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressions({
    this.conditions,
    this.logicalOperator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionsValue = conditions;
    if (conditionsValue != null) {
      map['conditions'] = conditionsValue.toMap();
    }
    final logicalOperatorValue = logicalOperator;
    if (logicalOperatorValue != null) {
      map['logicalOperator'] = logicalOperatorValue;
    }
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressions.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressions(
      conditions: map['conditions'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditions
              .fromMap((map['conditions'] as Map).cast<String, dynamic>()),
      logicalOperator: map['logicalOperator'] == null
          ? null
          : map['logicalOperator'] as String,
    );
  }
}

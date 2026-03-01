// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_deidentify_template_deidentify_config_record_transformations_record_suppression_condition_expressions_conditions.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressions {
  /// Conditions to apply to the expression.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditions?
  conditions;

  /// The operator to apply to the result of conditions. Default and currently only supported value is AND.
  /// Default value is `AND`.
  /// Possible values are: `AND`.
  final String? logicalOperator;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressions].
  /// [conditions] Conditions to apply to the expression.
  /// [logicalOperator] The operator to apply to the result of conditions. Default and currently only supported value is AND.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressions({
    this.conditions,
    this.logicalOperator,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : conditions!.toMap(),
      'logicalOperator': ?logicalOperator,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressions.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressions(
      conditions: map['conditions'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressionsConditions.fromMap(
              (map['conditions'] as Map).cast<String, dynamic>(),
            ),
      logicalOperator: map['logicalOperator'] == null
          ? null
          : map['logicalOperator'] as String,
    );
  }
}

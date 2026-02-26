// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_deidentify_template_deidentify_config_record_transformations_record_suppression_condition_expressions/prevention_deidentify_template_deidentify_config_record_transformations_record_suppression_condition_expressions.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition {
  /// An expression, consisting of an operator and conditions.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressions?
      expressions;

  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition({
    this.expressions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final expressionsValue = expressions;
    if (expressionsValue != null) {
      map['expressions'] = expressionsValue.toMap();
    }
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition(
      expressions: map['expressions'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionConditionExpressions
              .fromMap((map['expressions'] as Map).cast<String, dynamic>()),
    );
  }
}

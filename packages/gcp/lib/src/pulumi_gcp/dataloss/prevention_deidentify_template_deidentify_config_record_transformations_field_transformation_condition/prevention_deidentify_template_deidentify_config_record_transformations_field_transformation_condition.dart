// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_condition_expressions/prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_condition_expressions.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationCondition {
  /// An expression, consisting of an operator and conditions.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressions?
      expressions;

  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationCondition({
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

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationCondition.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationCondition(
      expressions: map['expressions'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressions
              .fromMap((map['expressions'] as Map).cast<String, dynamic>()),
    );
  }
}

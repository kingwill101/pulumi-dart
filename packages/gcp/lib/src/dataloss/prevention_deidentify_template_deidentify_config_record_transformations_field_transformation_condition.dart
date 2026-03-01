// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_condition_expressions.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationCondition {
  /// An expression, consisting of an operator and conditions.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressions? expressions;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationCondition].
  /// [expressions] An expression, consisting of an operator and conditions.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationCondition({
    this.expressions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressions': ?expressions == null ? null : expressions!.toMap(),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationCondition.fromMap(Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationCondition(
      expressions: map['expressions'] == null ? null : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressions.fromMap((map['expressions'] as Map).cast<String, dynamic>()),
    );
  }
}


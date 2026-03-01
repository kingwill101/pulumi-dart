// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_condition_expressions_conditions_condition.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditions {
  /// A collection of conditions.
  /// Structure is documented below.
  final List<
    PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsCondition
  >?
  conditions;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditions].
  /// [conditions] A collection of conditions.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditions({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null
          ? null
          : pulumi.Input.encodeList<
              PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsCondition,
              Map<String, dynamic>
            >(conditions!, (value) => value.toMap()),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditions.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditions(
      conditions: map['conditions'] == null
          ? null
          : pulumi.Input.decodeList<
              PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsCondition
            >(
              map['conditions'],
              (value) =>
                  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationConditionExpressionsConditionsCondition.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}

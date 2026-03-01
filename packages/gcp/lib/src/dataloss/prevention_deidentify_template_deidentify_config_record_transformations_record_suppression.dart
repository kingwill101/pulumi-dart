// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_deidentify_template_deidentify_config_record_transformations_record_suppression_condition.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppression {
  /// A condition that when it evaluates to true will result in the record being evaluated to be suppressed from the transformed content.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition?
  condition;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppression].
  /// [condition] A condition that when it evaluates to true will result in the record being evaluated to be suppressed from the transformed content.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppression({
    this.condition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition == null ? null : condition!.toMap(),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppression.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppression(
      condition: map['condition'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsRecordSuppressionCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}

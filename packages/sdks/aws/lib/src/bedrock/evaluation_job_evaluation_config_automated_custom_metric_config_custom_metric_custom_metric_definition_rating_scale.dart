// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_evaluation_config_automated_custom_metric_config_custom_metric_custom_metric_definition_rating_scale_value.dart';

class EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScale {
  /// Definition for one rating in the custom metric rating scale.
  final pulumi.Input<String> definition;
  /// Value for one rating in the custom metric rating scale. See `value` Block below.
  final pulumi.Input<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValue> value;

  /// Creates a new [EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScale].
  /// [definition] Definition for one rating in the custom metric rating scale.
  /// [value] Value for one rating in the custom metric rating scale. See `value` Block below.
  const EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScale({
    required this.definition,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definition': definition,
      'value': pulumi.Input.mapInputValue<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValue, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScale.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScale(
      definition: pulumi.Input.fromValue(map['definition'] as String),
      value: pulumi.Input.fromValue(EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScaleValue.fromMap((map['value']! as Map).cast<String, dynamic>())),
    );
  }
}

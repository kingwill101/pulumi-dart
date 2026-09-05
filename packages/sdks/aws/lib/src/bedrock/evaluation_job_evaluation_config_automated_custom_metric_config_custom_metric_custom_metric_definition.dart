// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_evaluation_config_automated_custom_metric_config_custom_metric_custom_metric_definition_rating_scale.dart';

class EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinition {
  /// Prompt that instructs the evaluator model how to rate the model or RAG source under evaluation.
  final pulumi.Input<String> instructions;
  /// Name for the custom metric. Must be unique in your AWS Region.
  final pulumi.Input<String> name;
  /// One or more items defining the rating scale for the custom metric. See `ratingScale` Block below.
  final pulumi.Input<List<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScale>?>? ratingScales;

  /// Creates a new [EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinition].
  /// [instructions] Prompt that instructs the evaluator model how to rate the model or RAG source under evaluation.
  /// [name] Name for the custom metric. Must be unique in your AWS Region.
  /// [ratingScales] One or more items defining the rating scale for the custom metric. See `ratingScale` Block below.
  const EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinition({
    required this.instructions,
    required this.name,
    this.ratingScales,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instructions': instructions,
      'name': name,
      'ratingScales': ?pulumi.Input.mapOptionalInputValue<List<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScale>, List<Map<String, dynamic>>>(ratingScales, (value) => pulumi.Input.encodeList<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScale, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinition.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinition(
      instructions: pulumi.Input.fromValue(map['instructions'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      ratingScales: (() { final guardedValue = map['ratingScales']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScale>(guardedValue, (value) => EvaluationJobEvaluationConfigAutomatedCustomMetricConfigCustomMetricCustomMetricDefinitionRatingScale.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

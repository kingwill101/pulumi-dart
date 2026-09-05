// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EvaluationJobEvaluationConfigHumanCustomMetric {
  /// Description of the metric.
  final pulumi.Input<String?>? description;
  /// Name of the metric.
  final pulumi.Input<String> name;
  /// How the metric is rated. Valid values: `ThumbsUpDown`, `IndividualLikertScale`, `ComparisonLikertScale`, `ComparisonChoice`, `ComparisonRank`.
  final pulumi.Input<String> ratingMethod;

  /// Creates a new [EvaluationJobEvaluationConfigHumanCustomMetric].
  /// [description] Description of the metric.
  /// [name] Name of the metric.
  /// [ratingMethod] How the metric is rated. Valid values: `ThumbsUpDown`, `IndividualLikertScale`, `ComparisonLikertScale`, `ComparisonChoice`, `ComparisonRank`.
  const EvaluationJobEvaluationConfigHumanCustomMetric({
    this.description,
    required this.name,
    required this.ratingMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'ratingMethod': ratingMethod,
    };
  }

  factory EvaluationJobEvaluationConfigHumanCustomMetric.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfigHumanCustomMetric(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      ratingMethod: pulumi.Input.fromValue(map['ratingMethod'] as String),
    );
  }
}

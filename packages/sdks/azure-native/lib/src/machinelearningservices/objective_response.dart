// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Optimization objective.
class ObjectiveResponse {
  /// [Required] Defines supported metric goals for hyperparameter tuning
  final pulumi.Input<String> goal;
  /// [Required] Name of the metric to optimize.
  final pulumi.Input<String> primaryMetric;

  /// Creates a new [ObjectiveResponse].
  /// [goal] [Required] Defines supported metric goals for hyperparameter tuning
  /// [primaryMetric] [Required] Name of the metric to optimize.
  ObjectiveResponse({
    required this.goal,
    required this.primaryMetric,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'goal': goal,
      'primaryMetric': primaryMetric,
    };
  }

  factory ObjectiveResponse.fromMap(Map<String, dynamic> map) {
    return ObjectiveResponse(
      goal: (map['goal'] as String).input(),
      primaryMetric: (map['primaryMetric'] as String).input(),
    );
  }
}


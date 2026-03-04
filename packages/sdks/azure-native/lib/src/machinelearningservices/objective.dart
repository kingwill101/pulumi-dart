// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Optimization objective.
class Objective {
  /// [Required] Defines supported metric goals for hyperparameter tuning
  final pulumi.Input<String> goal;

  /// [Required] Name of the metric to optimize.
  final pulumi.Input<String> primaryMetric;

  /// Creates a new [Objective].
  /// [goal] [Required] Defines supported metric goals for hyperparameter tuning
  /// [primaryMetric] [Required] Name of the metric to optimize.
  Objective({required this.goal, required this.primaryMetric});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'goal': goal, 'primaryMetric': primaryMetric};
  }

  factory Objective.fromMap(Map<String, dynamic> map) {
    return Objective(
      goal: pulumi.Input.fromValue(map['goal'] as String),
      primaryMetric: pulumi.Input.fromValue(map['primaryMetric'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


/// Optimization objective.
class ObjectiveResponse {
  /// [Required] Defines supported metric goals for hyperparameter tuning
  final String goal;
  /// [Required] Name of the metric to optimize.
  final String primaryMetric;

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
      goal: map['goal'] as String,
      primaryMetric: map['primaryMetric'] as String,
    );
  }
}


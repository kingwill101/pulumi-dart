// ignore_for_file: unused_element, unnecessary_cast


/// Activity dependency information.
class ActivityDependencyResponse {
  /// Activity name.
  final String activity;
  /// Match-Condition for the dependency.
  final List<String> dependencyConditions;

  /// Creates a new [ActivityDependencyResponse].
  /// [activity] Activity name.
  /// [dependencyConditions] Match-Condition for the dependency.
  ActivityDependencyResponse({
    required this.activity,
    required this.dependencyConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activity': activity,
      'dependencyConditions': dependencyConditions,
    };
  }

  factory ActivityDependencyResponse.fromMap(Map<String, dynamic> map) {
    return ActivityDependencyResponse(
      activity: map['activity'] as String,
      dependencyConditions: (map['dependencyConditions'] as List).cast<String>(),
    );
  }
}


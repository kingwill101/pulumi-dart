// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Activity dependency information.
class ActivityDependencyResponse {
  /// Activity name.
  final pulumi.Input<String> activity;
  /// Match-Condition for the dependency.
  final pulumi.Input<List<String>> dependencyConditions;

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
      activity: pulumi.Input.fromValue(map['activity'] as String),
      dependencyConditions: pulumi.Input.fromValue((map['dependencyConditions'] as List).cast<String>()),
    );
  }
}


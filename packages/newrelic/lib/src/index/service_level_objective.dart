// ignore_for_file: unused_element, unnecessary_cast

import 'service_level_objective_time_window.dart';

class ServiceLevelObjective {
  /// The description of the SLI.
  final String? description;
  /// A short name for the SLI that will help anyone understand what it is about.
  final String? name;
  /// The target of the objective, valid values between `0` and `100`. Up to 5 decimals accepted.
  final double target;
  /// Time window is the period of the objective.
  final ServiceLevelObjectiveTimeWindow timeWindow;

  /// Creates a new [ServiceLevelObjective].
  /// [description] The description of the SLI.
  /// [name] A short name for the SLI that will help anyone understand what it is about.
  /// [target] The target of the objective, valid values between `0` and `100`. Up to 5 decimals accepted.
  /// [timeWindow] Time window is the period of the objective.
  ServiceLevelObjective({
    this.description,
    this.name,
    required this.target,
    required this.timeWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'target': target,
      'timeWindow': timeWindow.toMap(),
    };
  }

  factory ServiceLevelObjective.fromMap(Map<String, dynamic> map) {
    return ServiceLevelObjective(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      target: map['target'] as double,
      timeWindow: ServiceLevelObjectiveTimeWindow.fromMap((map['timeWindow'] as Map).cast<String, dynamic>()),
    );
  }
}


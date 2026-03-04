// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProtectedItemModelPropertiesResponseLastFailedPlannedFailoverJob {
  /// Gets or sets the workflow friendly display name.
  final pulumi.Input<String> displayName;

  /// Gets or sets end time of the workflow.
  final pulumi.Input<String> endTime;

  /// Gets or sets workflow Id.
  final pulumi.Input<String> id;

  /// Gets or sets workflow name.
  final pulumi.Input<String> name;

  /// Gets or sets protection scenario name.
  final pulumi.Input<String> scenarioName;

  /// Gets or sets start time of the workflow.
  final pulumi.Input<String> startTime;

  /// Gets or sets workflow state.
  final pulumi.Input<String> state;

  /// Creates a new [ProtectedItemModelPropertiesResponseLastFailedPlannedFailoverJob].
  /// [displayName] Gets or sets the workflow friendly display name.
  /// [endTime] Gets or sets end time of the workflow.
  /// [id] Gets or sets workflow Id.
  /// [name] Gets or sets workflow name.
  /// [scenarioName] Gets or sets protection scenario name.
  /// [startTime] Gets or sets start time of the workflow.
  /// [state] Gets or sets workflow state.
  ProtectedItemModelPropertiesResponseLastFailedPlannedFailoverJob({
    required this.displayName,
    required this.endTime,
    required this.id,
    required this.name,
    required this.scenarioName,
    required this.startTime,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'endTime': endTime,
      'id': id,
      'name': name,
      'scenarioName': scenarioName,
      'startTime': startTime,
      'state': state,
    };
  }

  factory ProtectedItemModelPropertiesResponseLastFailedPlannedFailoverJob.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProtectedItemModelPropertiesResponseLastFailedPlannedFailoverJob(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      scenarioName: pulumi.Input.fromValue(map['scenarioName'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

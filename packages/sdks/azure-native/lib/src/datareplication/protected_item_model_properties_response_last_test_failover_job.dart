// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProtectedItemModelPropertiesResponseLastTestFailoverJob {
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

  /// Creates a new [ProtectedItemModelPropertiesResponseLastTestFailoverJob].
  /// [displayName] Gets or sets the workflow friendly display name.
  /// [endTime] Gets or sets end time of the workflow.
  /// [id] Gets or sets workflow Id.
  /// [name] Gets or sets workflow name.
  /// [scenarioName] Gets or sets protection scenario name.
  /// [startTime] Gets or sets start time of the workflow.
  /// [state] Gets or sets workflow state.
  ProtectedItemModelPropertiesResponseLastTestFailoverJob({
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

  factory ProtectedItemModelPropertiesResponseLastTestFailoverJob.fromMap(Map<String, dynamic> map) {
    return ProtectedItemModelPropertiesResponseLastTestFailoverJob(
      displayName: (map['displayName'] as String).input(),
      endTime: (map['endTime'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      scenarioName: (map['scenarioName'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}


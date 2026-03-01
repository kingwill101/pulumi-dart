// ignore_for_file: unused_element, unnecessary_cast


class WorkloadInstanceModelPropertiesResponseCurrentJob {
  /// Gets or sets the workflow friendly display name.
  final String displayName;
  /// Gets or sets end time of the workflow.
  final String endTime;
  /// Gets or sets workflow Id.
  final String id;
  /// Gets or sets workflow name.
  final String name;
  /// Gets or sets workload scenario name.
  final String scenarioName;
  /// Gets or sets start time of the workflow.
  final String startTime;
  /// Gets or sets workflow state.
  final String state;

  /// Creates a new [WorkloadInstanceModelPropertiesResponseCurrentJob].
  /// [displayName] Gets or sets the workflow friendly display name.
  /// [endTime] Gets or sets end time of the workflow.
  /// [id] Gets or sets workflow Id.
  /// [name] Gets or sets workflow name.
  /// [scenarioName] Gets or sets workload scenario name.
  /// [startTime] Gets or sets start time of the workflow.
  /// [state] Gets or sets workflow state.
  WorkloadInstanceModelPropertiesResponseCurrentJob({
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

  factory WorkloadInstanceModelPropertiesResponseCurrentJob.fromMap(Map<String, dynamic> map) {
    return WorkloadInstanceModelPropertiesResponseCurrentJob(
      displayName: map['displayName'] as String,
      endTime: map['endTime'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      scenarioName: map['scenarioName'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
    );
  }
}


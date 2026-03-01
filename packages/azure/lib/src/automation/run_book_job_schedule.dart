// ignore_for_file: unused_element, unnecessary_cast


class RunBookJobSchedule {
  /// The UUID of automation runbook job schedule ID.
  final String? jobScheduleId;
  /// A map of key/value pairs corresponding to the arguments that can be passed to the Runbook.
  ///
  /// > **Note:** The parameter keys/names must strictly be in lowercase, even if this is not the case in the runbook. This is due to a limitation in Azure Automation where the parameter names are normalized. The values specified don't have this limitation.
  final Map<String, String>? parameters;
  /// Name of a Hybrid Worker Group the Runbook will be executed on.
  final String? runOn;
  /// The name of the Schedule.
  final String scheduleName;

  /// Creates a new [RunBookJobSchedule].
  /// [jobScheduleId] The UUID of automation runbook job schedule ID.
  /// [parameters] A map of key/value pairs corresponding to the arguments that can be passed to the Runbook.
  /// [runOn] Name of a Hybrid Worker Group the Runbook will be executed on.
  /// [scheduleName] The name of the Schedule.
  RunBookJobSchedule({
    this.jobScheduleId,
    this.parameters,
    this.runOn,
    required this.scheduleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobScheduleId': ?jobScheduleId,
      'parameters': ?parameters,
      'runOn': ?runOn,
      'scheduleName': scheduleName,
    };
  }

  factory RunBookJobSchedule.fromMap(Map<String, dynamic> map) {
    return RunBookJobSchedule(
      jobScheduleId: map['jobScheduleId'] == null ? null : map['jobScheduleId'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      runOn: map['runOn'] == null ? null : map['runOn'] as String,
      scheduleName: map['scheduleName'] as String,
    );
  }
}


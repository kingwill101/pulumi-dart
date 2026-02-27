// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_event_response.dart';

/// Job status.
class JobStatusResponse {
  /// The duration of time that the Job spent in status RUNNING.
  final String runDuration;

  /// Job state
  final String state;

  /// Job status events
  final List<StatusEventResponse> statusEvents;

  /// Aggregated task status for each TaskGroup in the Job. The map key is TaskGroup ID.
  final Map<String, String> taskGroups;

  JobStatusResponse({
    required this.runDuration,
    required this.state,
    required this.statusEvents,
    required this.taskGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['runDuration'] = runDuration;
    map['state'] = state;
    map['statusEvents'] =
        pulumi.Input.encodeList<StatusEventResponse, Map<String, dynamic>>(
            statusEvents, (value) => value.toMap());
    map['taskGroups'] = taskGroups;
    return map;
  }

  factory JobStatusResponse.fromMap(Map<String, dynamic> map) {
    return JobStatusResponse(
      runDuration: map['runDuration'] as String,
      state: map['state'] as String,
      statusEvents: pulumi.Input.decodeList<StatusEventResponse>(
          map['statusEvents'],
          (value) => StatusEventResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      taskGroups: (map['taskGroups'] as Map).cast<String, String>(),
    );
  }
}

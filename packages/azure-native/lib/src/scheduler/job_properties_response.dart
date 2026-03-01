// ignore_for_file: unused_element, unnecessary_cast

import 'job_action_response.dart';
import 'job_recurrence_response.dart';
import 'job_status_response.dart';

class JobPropertiesResponse {
  /// Gets or sets the job action.
  final JobActionResponse? action;
  /// Gets or sets the job recurrence.
  final JobRecurrenceResponse? recurrence;
  /// Gets or sets the job start time.
  final String? startTime;
  /// Gets or set the job state.
  final String? state;
  /// Gets the job status.
  final JobStatusResponse status;

  /// Creates a new [JobPropertiesResponse].
  /// [action] Gets or sets the job action.
  /// [recurrence] Gets or sets the job recurrence.
  /// [startTime] Gets or sets the job start time.
  /// [state] Gets or set the job state.
  /// [status] Gets the job status.
  JobPropertiesResponse({
    this.action,
    this.recurrence,
    this.startTime,
    this.state,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'recurrence': ?recurrence == null ? null : recurrence!.toMap(),
      'startTime': ?startTime,
      'state': ?state,
      'status': status.toMap(),
    };
  }

  factory JobPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return JobPropertiesResponse(
      action: map['action'] == null ? null : JobActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>()),
      recurrence: map['recurrence'] == null ? null : JobRecurrenceResponse.fromMap((map['recurrence'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      status: JobStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}


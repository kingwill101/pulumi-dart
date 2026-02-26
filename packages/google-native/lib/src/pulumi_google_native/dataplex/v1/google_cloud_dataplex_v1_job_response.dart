// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_task_execution_spec_response.dart';

/// A job represents an instance of a task.
class GoogleCloudDataplexV1JobResponse {
  /// The time when the job ended.
  final String endTime;

  /// Spec related to how a task is executed.
  final GoogleCloudDataplexV1TaskExecutionSpecResponse executionSpec;

  /// User-defined labels for the task.
  final Map<String, String> labels;

  /// Additional information about the current state.
  final String message;

  /// The relative resource name of the job, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/tasks/{task_id}/jobs/{job_id}.
  final String name;

  /// The number of times the job has been retried (excluding the initial attempt).
  final int retryCount;

  /// The underlying service running a job.
  final String service;

  /// The full resource name for the job run under a particular service.
  final String serviceJob;

  /// The time when the job was started.
  final String startTime;

  /// Execution state for the job.
  final String state;

  /// Job execution trigger.
  final String trigger;

  /// System generated globally unique ID for the job.
  final String uid;

  GoogleCloudDataplexV1JobResponse({
    required this.endTime,
    required this.executionSpec,
    required this.labels,
    required this.message,
    required this.name,
    required this.retryCount,
    required this.service,
    required this.serviceJob,
    required this.startTime,
    required this.state,
    required this.trigger,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['executionSpec'] = executionSpec.toMap();
    map['labels'] = labels;
    map['message'] = message;
    map['name'] = name;
    map['retryCount'] = retryCount;
    map['service'] = service;
    map['serviceJob'] = serviceJob;
    map['startTime'] = startTime;
    map['state'] = state;
    map['trigger'] = trigger;
    map['uid'] = uid;
    return map;
  }

  factory GoogleCloudDataplexV1JobResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1JobResponse(
      endTime: map['endTime'] as String,
      executionSpec: GoogleCloudDataplexV1TaskExecutionSpecResponse.fromMap(
          (map['executionSpec'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      message: map['message'] as String,
      name: map['name'] as String,
      retryCount: map['retryCount'] as int,
      service: map['service'] as String,
      serviceJob: map['serviceJob'] as String,
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      trigger: map['trigger'] as String,
      uid: map['uid'] as String,
    );
  }
}

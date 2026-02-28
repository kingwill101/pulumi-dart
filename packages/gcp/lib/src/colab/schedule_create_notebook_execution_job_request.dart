// ignore_for_file: unused_element, unnecessary_cast

import 'schedule_create_notebook_execution_job_request_notebook_execution_job.dart';

class ScheduleCreateNotebookExecutionJobRequest {
  /// The NotebookExecutionJob to create.
  /// Structure is documented below.
  final ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob
      notebookExecutionJob;

  /// Creates a new [ScheduleCreateNotebookExecutionJobRequest].
  /// [notebookExecutionJob] The NotebookExecutionJob to create.
  ScheduleCreateNotebookExecutionJobRequest({
    required this.notebookExecutionJob,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['notebookExecutionJob'] = notebookExecutionJob.toMap();
    return map;
  }

  factory ScheduleCreateNotebookExecutionJobRequest.fromMap(
      Map<String, dynamic> map) {
    return ScheduleCreateNotebookExecutionJobRequest(
      notebookExecutionJob:
          ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob.fromMap(
              (map['notebookExecutionJob'] as Map).cast<String, dynamic>()),
    );
  }
}

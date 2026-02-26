// ignore_for_file: unused_element, unnecessary_cast

import '../schedule_create_notebook_execution_job_request_notebook_execution_job_dataform_repository_source/schedule_create_notebook_execution_job_request_notebook_execution_job_dataform_repository_source.dart';
import '../schedule_create_notebook_execution_job_request_notebook_execution_job_gcs_notebook_source/schedule_create_notebook_execution_job_request_notebook_execution_job_gcs_notebook_source.dart';

class ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob {
  /// The Dataform Repository containing the input notebook.
  /// Structure is documented below.
  final ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource?
      dataformRepositorySource;

  /// Required. The display name of the Notebook Execution.
  final String displayName;

  /// Max running time of the execution job in seconds (default 86400s / 24 hrs). A duration in seconds with up to nine fractional digits, ending with "s". Example: "3.5s".
  final String? executionTimeout;

  /// The user email to run the execution as.
  final String? executionUser;

  /// The Cloud Storage uri for the input notebook.
  /// Structure is documented below.
  final ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource?
      gcsNotebookSource;

  /// The Cloud Storage location to upload the result to. Format:`gs://bucket-name`
  final String gcsOutputUri;

  /// The NotebookRuntimeTemplate to source compute configuration from.
  final String notebookRuntimeTemplateResourceName;

  /// The service account to run the execution as.
  final String? serviceAccount;

  ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob({
    this.dataformRepositorySource,
    required this.displayName,
    this.executionTimeout,
    this.executionUser,
    this.gcsNotebookSource,
    required this.gcsOutputUri,
    required this.notebookRuntimeTemplateResourceName,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataformRepositorySourceValue = dataformRepositorySource;
    if (dataformRepositorySourceValue != null) {
      map['dataformRepositorySource'] = dataformRepositorySourceValue.toMap();
    }
    map['displayName'] = displayName;
    final executionTimeoutValue = executionTimeout;
    if (executionTimeoutValue != null) {
      map['executionTimeout'] = executionTimeoutValue;
    }
    final executionUserValue = executionUser;
    if (executionUserValue != null) {
      map['executionUser'] = executionUserValue;
    }
    final gcsNotebookSourceValue = gcsNotebookSource;
    if (gcsNotebookSourceValue != null) {
      map['gcsNotebookSource'] = gcsNotebookSourceValue.toMap();
    }
    map['gcsOutputUri'] = gcsOutputUri;
    map['notebookRuntimeTemplateResourceName'] =
        notebookRuntimeTemplateResourceName;
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    return map;
  }

  factory ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob.fromMap(
      Map<String, dynamic> map) {
    return ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob(
      dataformRepositorySource: map['dataformRepositorySource'] == null
          ? null
          : ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource
              .fromMap((map['dataformRepositorySource'] as Map)
                  .cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      executionTimeout: map['executionTimeout'] == null
          ? null
          : map['executionTimeout'] as String,
      executionUser:
          map['executionUser'] == null ? null : map['executionUser'] as String,
      gcsNotebookSource: map['gcsNotebookSource'] == null
          ? null
          : ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource
              .fromMap(
                  (map['gcsNotebookSource'] as Map).cast<String, dynamic>()),
      gcsOutputUri: map['gcsOutputUri'] as String,
      notebookRuntimeTemplateResourceName:
          map['notebookRuntimeTemplateResourceName'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
    );
  }
}

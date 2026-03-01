// ignore_for_file: unused_element, unnecessary_cast

import 'schedule_create_notebook_execution_job_request_notebook_execution_job_dataform_repository_source.dart';
import 'schedule_create_notebook_execution_job_request_notebook_execution_job_gcs_notebook_source.dart';

class ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob {
  /// The Dataform Repository containing the input notebook.
  /// Structure is documented below.
  final ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource? dataformRepositorySource;
  /// Required. The display name of the Notebook Execution.
  final String displayName;
  /// Max running time of the execution job in seconds (default 86400s / 24 hrs). A duration in seconds with up to nine fractional digits, ending with "s". Example: "3.5s".
  final String? executionTimeout;
  /// The user email to run the execution as.
  final String? executionUser;
  /// The Cloud Storage uri for the input notebook.
  /// Structure is documented below.
  final ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource? gcsNotebookSource;
  /// The Cloud Storage location to upload the result to. Format:`gs://bucket-name`
  final String gcsOutputUri;
  /// The NotebookRuntimeTemplate to source compute configuration from.
  final String notebookRuntimeTemplateResourceName;
  /// The service account to run the execution as.
  final String? serviceAccount;

  /// Creates a new [ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob].
  /// [dataformRepositorySource] The Dataform Repository containing the input notebook.
  /// [displayName] Required. The display name of the Notebook Execution.
  /// [executionTimeout] Max running time of the execution job in seconds (default 86400s / 24 hrs). A duration in seconds with up to nine fractional digits, ending with "s". Example: "3.5s".
  /// [executionUser] The user email to run the execution as.
  /// [gcsNotebookSource] The Cloud Storage uri for the input notebook.
  /// [gcsOutputUri] The Cloud Storage location to upload the result to. Format:`gs://bucket-name`
  /// [notebookRuntimeTemplateResourceName] The NotebookRuntimeTemplate to source compute configuration from.
  /// [serviceAccount] The service account to run the execution as.
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
    return <String, dynamic>{
      'dataformRepositorySource': ?dataformRepositorySource == null ? null : dataformRepositorySource!.toMap(),
      'displayName': displayName,
      'executionTimeout': ?executionTimeout,
      'executionUser': ?executionUser,
      'gcsNotebookSource': ?gcsNotebookSource == null ? null : gcsNotebookSource!.toMap(),
      'gcsOutputUri': gcsOutputUri,
      'notebookRuntimeTemplateResourceName': notebookRuntimeTemplateResourceName,
      'serviceAccount': ?serviceAccount,
    };
  }

  factory ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob.fromMap(Map<String, dynamic> map) {
    return ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJob(
      dataformRepositorySource: map['dataformRepositorySource'] == null ? null : ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobDataformRepositorySource.fromMap((map['dataformRepositorySource'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      executionTimeout: map['executionTimeout'] == null ? null : map['executionTimeout'] as String,
      executionUser: map['executionUser'] == null ? null : map['executionUser'] as String,
      gcsNotebookSource: map['gcsNotebookSource'] == null ? null : ScheduleCreateNotebookExecutionJobRequestNotebookExecutionJobGcsNotebookSource.fromMap((map['gcsNotebookSource'] as Map).cast<String, dynamic>()),
      gcsOutputUri: map['gcsOutputUri'] as String,
      notebookRuntimeTemplateResourceName: map['notebookRuntimeTemplateResourceName'] as String,
      serviceAccount: map['serviceAccount'] == null ? null : map['serviceAccount'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../notebook_execution_custom_environment_spec/notebook_execution_custom_environment_spec.dart';
import '../notebook_execution_dataform_repository_source/notebook_execution_dataform_repository_source.dart';
import '../notebook_execution_direct_notebook_source/notebook_execution_direct_notebook_source.dart';
import '../notebook_execution_gcs_notebook_source/notebook_execution_gcs_notebook_source.dart';

/// The set of arguments for NotebookExecution.
class NotebookExecutionArgs {
  /// Compute configuration to use for an execution job
  /// Structure is documented below.
  final Input<NotebookExecutionCustomEnvironmentSpec>? customEnvironmentSpec;

  /// The Dataform Repository containing the input notebook.
  /// Structure is documented below.
  final Input<NotebookExecutionDataformRepositorySource>?
      dataformRepositorySource;

  /// The content of the input notebook in ipynb format.
  /// Structure is documented below.
  final Input<NotebookExecutionDirectNotebookSource>? directNotebookSource;

  /// Required. The display name of the Notebook Execution.
  final Input<String> displayName;

  /// Max running time of the execution job in seconds (default 86400s / 24 hrs).
  final Input<String>? executionTimeout;

  /// The user email to run the execution as.
  final Input<String>? executionUser;

  /// The Cloud Storage uri for the input notebook.
  /// Structure is documented below.
  final Input<NotebookExecutionGcsNotebookSource>? gcsNotebookSource;

  /// The Cloud Storage location to upload the result to. Format:`gs://bucket-name`
  final Input<String> gcsOutputUri;

  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final Input<String> location;

  /// User specified ID for the Notebook Execution Job
  final Input<String>? notebookExecutionJobId;

  /// The NotebookRuntimeTemplate to source compute configuration from.
  final Input<String>? notebookRuntimeTemplateResourceName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The service account to run the execution as.
  final Input<String>? serviceAccount;

  NotebookExecutionArgs({
    this.customEnvironmentSpec,
    this.dataformRepositorySource,
    this.directNotebookSource,
    required this.displayName,
    this.executionTimeout,
    this.executionUser,
    this.gcsNotebookSource,
    required this.gcsOutputUri,
    required this.location,
    this.notebookExecutionJobId,
    this.notebookRuntimeTemplateResourceName,
    this.project,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customEnvironmentSpecValue = customEnvironmentSpec;
    if (customEnvironmentSpecValue != null) {
      map['customEnvironmentSpec'] = Input.mapOptionalInputValue<
              NotebookExecutionCustomEnvironmentSpec, Map<String, dynamic>>(
          customEnvironmentSpecValue, (value) => value.toMap());
    }
    final dataformRepositorySourceValue = dataformRepositorySource;
    if (dataformRepositorySourceValue != null) {
      map['dataformRepositorySource'] = Input.mapOptionalInputValue<
              NotebookExecutionDataformRepositorySource, Map<String, dynamic>>(
          dataformRepositorySourceValue, (value) => value.toMap());
    }
    final directNotebookSourceValue = directNotebookSource;
    if (directNotebookSourceValue != null) {
      map['directNotebookSource'] = Input.mapOptionalInputValue<
              NotebookExecutionDirectNotebookSource, Map<String, dynamic>>(
          directNotebookSourceValue, (value) => value.toMap());
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
      map['gcsNotebookSource'] = Input.mapOptionalInputValue<
              NotebookExecutionGcsNotebookSource, Map<String, dynamic>>(
          gcsNotebookSourceValue, (value) => value.toMap());
    }
    map['gcsOutputUri'] = gcsOutputUri;
    map['location'] = location;
    final notebookExecutionJobIdValue = notebookExecutionJobId;
    if (notebookExecutionJobIdValue != null) {
      map['notebookExecutionJobId'] = notebookExecutionJobIdValue;
    }
    final notebookRuntimeTemplateResourceNameValue =
        notebookRuntimeTemplateResourceName;
    if (notebookRuntimeTemplateResourceNameValue != null) {
      map['notebookRuntimeTemplateResourceName'] =
          notebookRuntimeTemplateResourceNameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    return map;
  }

  factory NotebookExecutionArgs.fromMap(Map<String, dynamic> map) {
    return NotebookExecutionArgs(
      customEnvironmentSpec:
          Input.asOptionalInput<NotebookExecutionCustomEnvironmentSpec>(
              map['customEnvironmentSpec']),
      dataformRepositorySource:
          Input.asOptionalInput<NotebookExecutionDataformRepositorySource>(
              map['dataformRepositorySource']),
      directNotebookSource:
          Input.asOptionalInput<NotebookExecutionDirectNotebookSource>(
              map['directNotebookSource']),
      displayName: Input.asInput<String>(map['displayName']),
      executionTimeout: Input.asOptionalInput<String>(map['executionTimeout']),
      executionUser: Input.asOptionalInput<String>(map['executionUser']),
      gcsNotebookSource:
          Input.asOptionalInput<NotebookExecutionGcsNotebookSource>(
              map['gcsNotebookSource']),
      gcsOutputUri: Input.asInput<String>(map['gcsOutputUri']),
      location: Input.asInput<String>(map['location']),
      notebookExecutionJobId:
          Input.asOptionalInput<String>(map['notebookExecutionJobId']),
      notebookRuntimeTemplateResourceName: Input.asOptionalInput<String>(
          map['notebookRuntimeTemplateResourceName']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
    );
  }
}

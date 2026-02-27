// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../notebook_execution_custom_environment_spec/notebook_execution_custom_environment_spec.dart';
import '../notebook_execution_dataform_repository_source/notebook_execution_dataform_repository_source.dart';
import '../notebook_execution_direct_notebook_source/notebook_execution_direct_notebook_source.dart';
import '../notebook_execution_gcs_notebook_source/notebook_execution_gcs_notebook_source.dart';

/// The set of arguments for NotebookExecution.
class NotebookExecutionArgs {
  /// Compute configuration to use for an execution job
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionCustomEnvironmentSpec>?
      customEnvironmentSpec;

  /// The Dataform Repository containing the input notebook.
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionDataformRepositorySource>?
      dataformRepositorySource;

  /// The content of the input notebook in ipynb format.
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionDirectNotebookSource>?
      directNotebookSource;

  /// Required. The display name of the Notebook Execution.
  final pulumi.Input<String> displayName;

  /// Max running time of the execution job in seconds (default 86400s / 24 hrs).
  final pulumi.Input<String>? executionTimeout;

  /// The user email to run the execution as.
  final pulumi.Input<String>? executionUser;

  /// The Cloud Storage uri for the input notebook.
  /// Structure is documented below.
  final pulumi.Input<NotebookExecutionGcsNotebookSource>? gcsNotebookSource;

  /// The Cloud Storage location to upload the result to. Format:`gs://bucket-name`
  final pulumi.Input<String> gcsOutputUri;

  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final pulumi.Input<String> location;

  /// User specified ID for the Notebook Execution Job
  final pulumi.Input<String>? notebookExecutionJobId;

  /// The NotebookRuntimeTemplate to source compute configuration from.
  final pulumi.Input<String>? notebookRuntimeTemplateResourceName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The service account to run the execution as.
  final pulumi.Input<String>? serviceAccount;

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
      map['customEnvironmentSpec'] = pulumi.Input.mapOptionalInputValue<
              NotebookExecutionCustomEnvironmentSpec, Map<String, dynamic>>(
          customEnvironmentSpecValue, (value) => value.toMap());
    }
    final dataformRepositorySourceValue = dataformRepositorySource;
    if (dataformRepositorySourceValue != null) {
      map['dataformRepositorySource'] = pulumi.Input.mapOptionalInputValue<
              NotebookExecutionDataformRepositorySource, Map<String, dynamic>>(
          dataformRepositorySourceValue, (value) => value.toMap());
    }
    final directNotebookSourceValue = directNotebookSource;
    if (directNotebookSourceValue != null) {
      map['directNotebookSource'] = pulumi.Input.mapOptionalInputValue<
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
      map['gcsNotebookSource'] = pulumi.Input.mapOptionalInputValue<
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
          pulumi.Input.asOptionalInput<NotebookExecutionCustomEnvironmentSpec>(
              map['customEnvironmentSpec']),
      dataformRepositorySource: pulumi.Input.asOptionalInput<
              NotebookExecutionDataformRepositorySource>(
          map['dataformRepositorySource']),
      directNotebookSource:
          pulumi.Input.asOptionalInput<NotebookExecutionDirectNotebookSource>(
              map['directNotebookSource']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      executionTimeout:
          pulumi.Input.asOptionalInput<String>(map['executionTimeout']),
      executionUser: pulumi.Input.asOptionalInput<String>(map['executionUser']),
      gcsNotebookSource:
          pulumi.Input.asOptionalInput<NotebookExecutionGcsNotebookSource>(
              map['gcsNotebookSource']),
      gcsOutputUri: pulumi.Input.asInput<String>(map['gcsOutputUri']),
      location: pulumi.Input.asInput<String>(map['location']),
      notebookExecutionJobId:
          pulumi.Input.asOptionalInput<String>(map['notebookExecutionJobId']),
      notebookRuntimeTemplateResourceName: pulumi.Input.asOptionalInput<String>(
          map['notebookRuntimeTemplateResourceName']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
    );
  }
}

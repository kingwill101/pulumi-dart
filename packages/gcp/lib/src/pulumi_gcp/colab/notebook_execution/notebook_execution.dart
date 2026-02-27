import 'package:pulumi/pulumi.dart' as pulumi;
import '../notebook_execution_custom_environment_spec/notebook_execution_custom_environment_spec.dart';
import '../notebook_execution_dataform_repository_source/notebook_execution_dataform_repository_source.dart';
import '../notebook_execution_direct_notebook_source/notebook_execution_direct_notebook_source.dart';
import '../notebook_execution_gcs_notebook_source/notebook_execution_gcs_notebook_source.dart';
import 'notebook_execution_args.dart';

/// 'An instance of a notebook Execution'
///
///
/// To get more information about NotebookExecution, see:
///
/// * [API documentation](https://cloud.google.com/vertex-ai/docs/reference/rest/v1/projects.locations.notebookExecutionJobs)
/// * How-to Guides
/// * [Schedule a notebook run](https://cloud.google.com/colab/docs/schedule-notebook-run)
///
/// ## Example Usage
///
/// ### Colab Notebook Execution Basic
///
///
///
/// ### Colab Notebook Execution Custom Env
///
///
///
/// ### Colab Notebook Execution Full
///
///
///
/// ### Colab Notebook Execution Dataform
///
///
///
///
/// ## Import
///
/// NotebookExecution can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/notebookExecutionJobs/{{notebook_execution_job_id}}`
///
/// * `{{project}}/{{location}}/{{notebook_execution_job_id}}`
///
/// * `{{location}}/{{notebook_execution_job_id}}`
///
/// When using the `pulumi import` command, NotebookExecution can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:colab/notebookExecution:NotebookExecution default projects/{{project}}/locations/{{location}}/notebookExecutionJobs/{{notebook_execution_job_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:colab/notebookExecution:NotebookExecution default {{project}}/{{location}}/{{notebook_execution_job_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:colab/notebookExecution:NotebookExecution default {{location}}/{{notebook_execution_job_id}}
/// ```
class NotebookExecution extends pulumi.CustomResource {
  /// Compute configuration to use for an execution job
  /// Structure is documented below.
  late final pulumi.Output<NotebookExecutionCustomEnvironmentSpec?>
      customEnvironmentSpec;

  /// The Dataform Repository containing the input notebook.
  /// Structure is documented below.
  late final pulumi.Output<NotebookExecutionDataformRepositorySource?>
      dataformRepositorySource;

  /// The content of the input notebook in ipynb format.
  /// Structure is documented below.
  late final pulumi.Output<NotebookExecutionDirectNotebookSource?>
      directNotebookSource;

  /// Required. The display name of the Notebook Execution.
  late final pulumi.Output<String> displayName;

  /// Max running time of the execution job in seconds (default 86400s / 24 hrs).
  late final pulumi.Output<String?> executionTimeout;

  /// The user email to run the execution as.
  late final pulumi.Output<String?> executionUser;

  /// The Cloud Storage uri for the input notebook.
  /// Structure is documented below.
  late final pulumi.Output<NotebookExecutionGcsNotebookSource?>
      gcsNotebookSource;

  /// The Cloud Storage location to upload the result to. Format:`gs://bucket-name`
  late final pulumi.Output<String> gcsOutputUri;

  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  late final pulumi.Output<String> location;

  /// User specified ID for the Notebook Execution Job
  late final pulumi.Output<String> notebookExecutionJobId;

  /// The NotebookRuntimeTemplate to source compute configuration from.
  late final pulumi.Output<String?> notebookRuntimeTemplateResourceName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The service account to run the execution as.
  late final pulumi.Output<String?> serviceAccount;

  NotebookExecution(
    String name, {
    NotebookExecutionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:colab/notebookExecution:NotebookExecution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.customEnvironmentSpec =
        registerOutput<NotebookExecutionCustomEnvironmentSpec?>(
            'customEnvironmentSpec');
    this.dataformRepositorySource =
        registerOutput<NotebookExecutionDataformRepositorySource?>(
            'dataformRepositorySource');
    this.directNotebookSource =
        registerOutput<NotebookExecutionDirectNotebookSource?>(
            'directNotebookSource');
    this.displayName = registerOutput<String>('displayName');
    this.executionTimeout = registerOutput<String?>('executionTimeout');
    this.executionUser = registerOutput<String?>('executionUser');
    this.gcsNotebookSource =
        registerOutput<NotebookExecutionGcsNotebookSource?>(
            'gcsNotebookSource');
    this.gcsOutputUri = registerOutput<String>('gcsOutputUri');
    this.location = registerOutput<String>('location');
    this.notebookExecutionJobId =
        registerOutput<String>('notebookExecutionJobId');
    this.notebookRuntimeTemplateResourceName =
        registerOutput<String?>('notebookRuntimeTemplateResourceName');
    this.project = registerOutput<String>('project');
    this.serviceAccount = registerOutput<String?>('serviceAccount');
  }
}

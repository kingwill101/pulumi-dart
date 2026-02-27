import 'package:pulumi/pulumi.dart' as pulumi;
import '../task_execution_spec/task_execution_spec.dart';
import '../task_execution_status/task_execution_status.dart';
import '../task_notebook/task_notebook.dart';
import '../task_spark/task_spark.dart';
import '../task_trigger_spec/task_trigger_spec.dart';
import 'task_args.dart';

/// A Dataplex task represents the work that you want Dataplex to do on a schedule. It encapsulates code, parameters, and the schedule.
///
///
/// To get more information about Task, see:
///
/// * [API documentation](https://cloud.google.com/dataplex/docs/reference/rest/v1/projects.locations.lakes.tasks)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dataplex/docs)
///
/// ## Example Usage
///
/// ### Dataplex Task Basic
///
///
///
/// ### Dataplex Task Spark
///
///
///
/// ### Dataplex Task Notebook
///
///
///
///
/// ## Import
///
/// Task can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/lakes/{{lake}}/tasks/{{task_id}}`
///
/// * `{{project}}/{{location}}/{{lake}}/{{task_id}}`
///
/// * `{{location}}/{{lake}}/{{task_id}}`
///
/// When using the `pulumi import` command, Task can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/task:Task default projects/{{project}}/locations/{{location}}/lakes/{{lake}}/tasks/{{task_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/task:Task default {{project}}/{{location}}/{{lake}}/{{task_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/task:Task default {{location}}/{{lake}}/{{task_id}}
/// ```
class Task extends pulumi.CustomResource {
  /// The time when the task was created.
  late final pulumi.Output<String> createTime;

  /// User-provided description of the task.
  late final pulumi.Output<String?> description;

  /// User friendly display name.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Configuration for the cluster
  /// Structure is documented below.
  late final pulumi.Output<TaskExecutionSpec> executionSpec;

  /// Configuration for the cluster
  /// Structure is documented below.
  late final pulumi.Output<List<TaskExecutionStatus>> executionStatuses;

  /// User-defined labels for the task.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The lake in which the task will be created in.
  late final pulumi.Output<String?> lake;

  /// The location in which the task will be created in.
  late final pulumi.Output<String?> location;

  /// (Output)
  /// The relative resource name of the job, of the form: projects/{project_number}/locations/{locationId}/lakes/{lakeId}/tasks/{taskId}/jobs/{jobId}.
  late final pulumi.Output<String> name;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  late final pulumi.Output<TaskNotebook?> notebook;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  late final pulumi.Output<TaskSpark?> spark;

  /// (Output)
  /// Execution state for the job.
  late final pulumi.Output<String> state;

  /// The task Id of the task.
  late final pulumi.Output<String?> taskId;

  /// Configuration for the cluster
  /// Structure is documented below.
  late final pulumi.Output<TaskTriggerSpec> triggerSpec;

  /// (Output)
  /// System generated globally unique ID for the job.
  late final pulumi.Output<String> uid;

  /// (Output)
  /// Last update time of the status.
  late final pulumi.Output<String> updateTime;

  Task(
    String name, {
    TaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/task:Task',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.executionSpec = registerOutput<TaskExecutionSpec>('executionSpec');
    this.executionStatuses =
        registerOutput<List<TaskExecutionStatus>>('executionStatuses');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lake = registerOutput<String?>('lake');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.notebook = registerOutput<TaskNotebook?>('notebook');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.spark = registerOutput<TaskSpark?>('spark');
    this.state = registerOutput<String>('state');
    this.taskId = registerOutput<String?>('taskId');
    this.triggerSpec = registerOutput<TaskTriggerSpec>('triggerSpec');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

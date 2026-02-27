import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_task_execution_spec_response.dart';
import 'google_cloud_dataplex_v1_task_execution_status_response.dart';
import 'google_cloud_dataplex_v1_task_notebook_task_config_response.dart';
import 'google_cloud_dataplex_v1_task_spark_task_config_response.dart';
import 'google_cloud_dataplex_v1_task_trigger_spec_response.dart';
import 'task_dataplex_v1_args.dart';

/// Creates a task resource within a lake.
/// Auto-naming is currently not supported for this resource.
class TaskDataplexV1 extends pulumi.CustomResource {
  /// The time when the task was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Description of the task.
  late final pulumi.Output<String> description;

  /// Optional. User friendly display name.
  late final pulumi.Output<String> displayName;

  /// Spec related to how a task is executed.
  late final pulumi.Output<GoogleCloudDataplexV1TaskExecutionSpecResponse>
      executionSpec;

  /// Status of the latest task executions.
  late final pulumi.Output<GoogleCloudDataplexV1TaskExecutionStatusResponse>
      executionStatus;

  /// Optional. User-defined labels for the task.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> lakeId;
  late final pulumi.Output<String> location;

  /// The relative resource name of the task, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/ tasks/{task_id}.
  late final pulumi.Output<String> name;

  /// Config related to running scheduled Notebooks.
  late final pulumi.Output<GoogleCloudDataplexV1TaskNotebookTaskConfigResponse>
      notebook;
  late final pulumi.Output<String> project;

  /// Config related to running custom Spark tasks.
  late final pulumi.Output<GoogleCloudDataplexV1TaskSparkTaskConfigResponse>
      spark;

  /// Current state of the task.
  late final pulumi.Output<String> state;

  /// Required. Task identifier.
  late final pulumi.Output<String> taskId;

  /// Spec related to how often and when a task should be triggered.
  late final pulumi.Output<GoogleCloudDataplexV1TaskTriggerSpecResponse>
      triggerSpec;

  /// System generated globally unique ID for the task. This ID will be different if the task is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// The time when the task was last updated.
  late final pulumi.Output<String> updateTime;

  TaskDataplexV1(
    String name, {
    TaskDataplexV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:Task',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.executionSpec =
        registerOutput<GoogleCloudDataplexV1TaskExecutionSpecResponse>(
            'executionSpec');
    this.executionStatus =
        registerOutput<GoogleCloudDataplexV1TaskExecutionStatusResponse>(
            'executionStatus');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.lakeId = registerOutput<String>('lakeId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.notebook =
        registerOutput<GoogleCloudDataplexV1TaskNotebookTaskConfigResponse>(
            'notebook');
    this.project = registerOutput<String>('project');
    this.spark =
        registerOutput<GoogleCloudDataplexV1TaskSparkTaskConfigResponse>(
            'spark');
    this.state = registerOutput<String>('state');
    this.taskId = registerOutput<String>('taskId');
    this.triggerSpec =
        registerOutput<GoogleCloudDataplexV1TaskTriggerSpecResponse>(
            'triggerSpec');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}

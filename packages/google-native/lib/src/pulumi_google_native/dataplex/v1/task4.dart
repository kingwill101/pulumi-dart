import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dataplex_v1_task_execution_spec_response.dart';
import 'google_cloud_dataplex_v1_task_execution_status_response.dart';
import 'google_cloud_dataplex_v1_task_notebook_task_config_response.dart';
import 'google_cloud_dataplex_v1_task_spark_task_config_response.dart';
import 'google_cloud_dataplex_v1_task_trigger_spec_response.dart';
import 'task_args4.dart';

/// Creates a task resource within a lake.
/// Auto-naming is currently not supported for this resource.
class Task4 extends CustomResource {
  /// The time when the task was created.
  late final Output<String> createTime;

  /// Optional. Description of the task.
  late final Output<String> description;

  /// Optional. User friendly display name.
  late final Output<String> displayName;

  /// Spec related to how a task is executed.
  late final Output<GoogleCloudDataplexV1TaskExecutionSpecResponse>
      executionSpec;

  /// Status of the latest task executions.
  late final Output<GoogleCloudDataplexV1TaskExecutionStatusResponse>
      executionStatus;

  /// Optional. User-defined labels for the task.
  late final Output<Map<String, String>> labels;
  late final Output<String> lakeId;
  late final Output<String> location;

  /// The relative resource name of the task, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/ tasks/{task_id}.
  late final Output<String> name;

  /// Config related to running scheduled Notebooks.
  late final Output<GoogleCloudDataplexV1TaskNotebookTaskConfigResponse>
      notebook;
  late final Output<String> project;

  /// Config related to running custom Spark tasks.
  late final Output<GoogleCloudDataplexV1TaskSparkTaskConfigResponse> spark;

  /// Current state of the task.
  late final Output<String> state;

  /// Required. Task identifier.
  late final Output<String> taskId;

  /// Spec related to how often and when a task should be triggered.
  late final Output<GoogleCloudDataplexV1TaskTriggerSpecResponse> triggerSpec;

  /// System generated globally unique ID for the task. This ID will be different if the task is deleted and re-created with the same name.
  late final Output<String> uid;

  /// The time when the task was last updated.
  late final Output<String> updateTime;

  Task4(
    String name, {
    TaskArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:Task',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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

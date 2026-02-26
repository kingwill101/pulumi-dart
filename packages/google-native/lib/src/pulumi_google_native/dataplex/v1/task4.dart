import 'package:pulumi/pulumi.dart';
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
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.executionSpec =
        Output.createUnknown<GoogleCloudDataplexV1TaskExecutionSpecResponse>();
    this.executionStatus = Output.createUnknown<
        GoogleCloudDataplexV1TaskExecutionStatusResponse>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.lakeId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.notebook = Output.createUnknown<
        GoogleCloudDataplexV1TaskNotebookTaskConfigResponse>();
    this.project = Output.createUnknown<String>();
    this.spark = Output.createUnknown<
        GoogleCloudDataplexV1TaskSparkTaskConfigResponse>();
    this.state = Output.createUnknown<String>();
    this.taskId = Output.createUnknown<String>();
    this.triggerSpec =
        Output.createUnknown<GoogleCloudDataplexV1TaskTriggerSpecResponse>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}

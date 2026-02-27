// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_task_execution_spec_response.dart';
import 'google_cloud_dataplex_v1_task_execution_status_response.dart';
import 'google_cloud_dataplex_v1_task_notebook_task_config_response.dart';
import 'google_cloud_dataplex_v1_task_spark_task_config_response.dart';
import 'google_cloud_dataplex_v1_task_trigger_spec_response.dart';

/// Result data returned by getTask.
class GetTaskDataplexV1Result {
  /// The time when the task was created.
  final String createTime;

  /// Optional. Description of the task.
  final String description;

  /// Optional. User friendly display name.
  final String displayName;

  /// Spec related to how a task is executed.
  final GoogleCloudDataplexV1TaskExecutionSpecResponse executionSpec;

  /// Status of the latest task executions.
  final GoogleCloudDataplexV1TaskExecutionStatusResponse executionStatus;

  /// Optional. User-defined labels for the task.
  final Map<String, String> labels;

  /// The relative resource name of the task, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/ tasks/{task_id}.
  final String name;

  /// Config related to running scheduled Notebooks.
  final GoogleCloudDataplexV1TaskNotebookTaskConfigResponse notebook;

  /// Config related to running custom Spark tasks.
  final GoogleCloudDataplexV1TaskSparkTaskConfigResponse spark;

  /// Current state of the task.
  final String state;

  /// Spec related to how often and when a task should be triggered.
  final GoogleCloudDataplexV1TaskTriggerSpecResponse triggerSpec;

  /// System generated globally unique ID for the task. This ID will be different if the task is deleted and re-created with the same name.
  final String uid;

  /// The time when the task was last updated.
  final String updateTime;

  GetTaskDataplexV1Result({
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.executionSpec,
    required this.executionStatus,
    required this.labels,
    required this.name,
    required this.notebook,
    required this.spark,
    required this.state,
    required this.triggerSpec,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['executionSpec'] = executionSpec.toMap();
    map['executionStatus'] = executionStatus.toMap();
    map['labels'] = labels;
    map['name'] = name;
    map['notebook'] = notebook.toMap();
    map['spark'] = spark.toMap();
    map['state'] = state;
    map['triggerSpec'] = triggerSpec.toMap();
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetTaskDataplexV1Result.fromMap(Map<String, dynamic> map) {
    return GetTaskDataplexV1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      executionSpec: GoogleCloudDataplexV1TaskExecutionSpecResponse.fromMap(
          (map['executionSpec'] as Map).cast<String, dynamic>()),
      executionStatus: GoogleCloudDataplexV1TaskExecutionStatusResponse.fromMap(
          (map['executionStatus'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      notebook: GoogleCloudDataplexV1TaskNotebookTaskConfigResponse.fromMap(
          (map['notebook'] as Map).cast<String, dynamic>()),
      spark: GoogleCloudDataplexV1TaskSparkTaskConfigResponse.fromMap(
          (map['spark'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      triggerSpec: GoogleCloudDataplexV1TaskTriggerSpecResponse.fromMap(
          (map['triggerSpec'] as Map).cast<String, dynamic>()),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

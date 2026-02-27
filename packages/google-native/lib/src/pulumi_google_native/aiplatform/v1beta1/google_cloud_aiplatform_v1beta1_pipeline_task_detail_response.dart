// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_execution_response.dart';
import 'google_cloud_aiplatform_v1beta1_pipeline_task_detail_pipeline_task_status_response.dart';
import 'google_cloud_aiplatform_v1beta1_pipeline_task_executor_detail_response.dart';
import 'google_rpc_status_response_aiplatform_v1beta1.dart';

/// The runtime detail of a task execution.
class GoogleCloudAiplatformV1beta1PipelineTaskDetailResponse {
  /// Task create time.
  final String createTime;

  /// Task end time.
  final String endTime;

  /// The error that occurred during task execution. Only populated when the task's state is FAILED or CANCELLED.
  final GoogleRpcStatusResponseAiplatformV1beta1 error;

  /// The execution metadata of the task.
  final GoogleCloudAiplatformV1beta1ExecutionResponse execution;

  /// The detailed execution info.
  final GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailResponse
      executorDetail;

  /// The runtime input artifacts of the task.
  final Map<String, String> inputs;

  /// The runtime output artifacts of the task.
  final Map<String, String> outputs;

  /// The id of the parent task if the task is within a component scope. Empty if the task is at the root level.
  final String parentTaskId;

  /// A list of task status. This field keeps a record of task status evolving over time.
  final List<
          GoogleCloudAiplatformV1beta1PipelineTaskDetailPipelineTaskStatusResponse>
      pipelineTaskStatus;

  /// Task start time.
  final String startTime;

  /// State of the task.
  final String state;

  /// The system generated ID of the task.
  final String taskId;

  /// The user specified name of the task that is defined in pipeline_spec.
  final String taskName;

  GoogleCloudAiplatformV1beta1PipelineTaskDetailResponse({
    required this.createTime,
    required this.endTime,
    required this.error,
    required this.execution,
    required this.executorDetail,
    required this.inputs,
    required this.outputs,
    required this.parentTaskId,
    required this.pipelineTaskStatus,
    required this.startTime,
    required this.state,
    required this.taskId,
    required this.taskName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['endTime'] = endTime;
    map['error'] = error.toMap();
    map['execution'] = execution.toMap();
    map['executorDetail'] = executorDetail.toMap();
    map['inputs'] = inputs;
    map['outputs'] = outputs;
    map['parentTaskId'] = parentTaskId;
    map['pipelineTaskStatus'] = pulumi.Input.encodeList<
        GoogleCloudAiplatformV1beta1PipelineTaskDetailPipelineTaskStatusResponse,
        Map<String, dynamic>>(pipelineTaskStatus, (value) => value.toMap());
    map['startTime'] = startTime;
    map['state'] = state;
    map['taskId'] = taskId;
    map['taskName'] = taskName;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1PipelineTaskDetailResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1PipelineTaskDetailResponse(
      createTime: map['createTime'] as String,
      endTime: map['endTime'] as String,
      error: GoogleRpcStatusResponseAiplatformV1beta1.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      execution: GoogleCloudAiplatformV1beta1ExecutionResponse.fromMap(
          (map['execution'] as Map).cast<String, dynamic>()),
      executorDetail:
          GoogleCloudAiplatformV1beta1PipelineTaskExecutorDetailResponse
              .fromMap((map['executorDetail'] as Map).cast<String, dynamic>()),
      inputs: (map['inputs'] as Map).cast<String, String>(),
      outputs: (map['outputs'] as Map).cast<String, String>(),
      parentTaskId: map['parentTaskId'] as String,
      pipelineTaskStatus: pulumi.Input.decodeList<
              GoogleCloudAiplatformV1beta1PipelineTaskDetailPipelineTaskStatusResponse>(
          map['pipelineTaskStatus'],
          (value) =>
              GoogleCloudAiplatformV1beta1PipelineTaskDetailPipelineTaskStatusResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      startTime: map['startTime'] as String,
      state: map['state'] as String,
      taskId: map['taskId'] as String,
      taskName: map['taskName'] as String,
    );
  }
}

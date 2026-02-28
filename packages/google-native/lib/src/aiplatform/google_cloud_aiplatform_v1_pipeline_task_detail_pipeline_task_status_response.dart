// ignore_for_file: unused_element, unnecessary_cast

import 'google_rpc_status_response.dart';

/// A single record of the task status.
class GoogleCloudAiplatformV1PipelineTaskDetailPipelineTaskStatusResponse {
  /// The error that occurred during the state. May be set when the state is any of the non-final state (PENDING/RUNNING/CANCELLING) or FAILED state. If the state is FAILED, the error here is final and not going to be retried. If the state is a non-final state, the error indicates a system-error being retried.
  final GoogleRpcStatusResponse error;

  /// The state of the task.
  final String state;

  /// Update time of this status.
  final String updateTime;

  /// Creates a new [GoogleCloudAiplatformV1PipelineTaskDetailPipelineTaskStatusResponse].
  /// [error] The error that occurred during the state. May be set when the state is any of the non-final state (PENDING/RUNNING/CANCELLING) or FAILED state. If the state is FAILED, the error here is final and not going to be retried. If the state is a non-final state, the error indicates a system-error being retried.
  /// [state] The state of the task.
  /// [updateTime] Update time of this status.
  GoogleCloudAiplatformV1PipelineTaskDetailPipelineTaskStatusResponse({
    required this.error,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['error'] = error.toMap();
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GoogleCloudAiplatformV1PipelineTaskDetailPipelineTaskStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1PipelineTaskDetailPipelineTaskStatusResponse(
      error: GoogleRpcStatusResponse.fromMap(
          (map['error'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

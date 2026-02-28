// ignore_for_file: unused_element, unnecessary_cast

import 'google_rpc_status_response_aiplatform_v1beta1.dart';

/// A single record of the task status.
class GoogleCloudAiplatformV1beta1PipelineTaskDetailPipelineTaskStatusResponse {
  /// The error that occurred during the state. May be set when the state is any of the non-final state (PENDING/RUNNING/CANCELLING) or FAILED state. If the state is FAILED, the error here is final and not going to be retried. If the state is a non-final state, the error indicates a system-error being retried.
  final GoogleRpcStatusResponseAiplatformV1beta1 error;
  /// The state of the task.
  final String state;
  /// Update time of this status.
  final String updateTime;

  /// Creates a new [GoogleCloudAiplatformV1beta1PipelineTaskDetailPipelineTaskStatusResponse].
  /// [error] The error that occurred during the state. May be set when the state is any of the non-final state (PENDING/RUNNING/CANCELLING) or FAILED state. If the state is FAILED, the error here is final and not going to be retried. If the state is a non-final state, the error indicates a system-error being retried.
  /// [state] The state of the task.
  /// [updateTime] Update time of this status.
  GoogleCloudAiplatformV1beta1PipelineTaskDetailPipelineTaskStatusResponse({
    required this.error,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error.toMap(),
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GoogleCloudAiplatformV1beta1PipelineTaskDetailPipelineTaskStatusResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1PipelineTaskDetailPipelineTaskStatusResponse(
      error: GoogleRpcStatusResponseAiplatformV1beta1.fromMap((map['error'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}


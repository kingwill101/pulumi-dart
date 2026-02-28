// ignore_for_file: unused_element, unnecessary_cast

import 'google_rpc_status_response.dart';

/// All metadata of most recent monitoring pipelines.
class GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse {
  /// The time that most recent monitoring pipelines that is related to this run.
  final String runTime;

  /// The status of the most recent monitoring pipeline.
  final GoogleRpcStatusResponse status;

  /// Creates a new [GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse].
  /// [runTime] The time that most recent monitoring pipelines that is related to this run.
  /// [status] The status of the most recent monitoring pipeline.
  GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse({
    required this.runTime,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['runTime'] = runTime;
    map['status'] = status.toMap();
    return map;
  }

  factory GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadataResponse(
      runTime: map['runTime'] as String,
      status: GoogleRpcStatusResponse.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

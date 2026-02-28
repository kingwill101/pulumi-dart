// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_model_monitoring_objective_config_response.dart';

/// ModelDeploymentMonitoringObjectiveConfig contains the pair of deployed_model_id to ModelMonitoringObjectiveConfig.
class GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfigResponse {
  /// The DeployedModel ID of the objective config.
  final String deployedModelId;
  /// The objective config of for the modelmonitoring job of this deployed model.
  final GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigResponse objectiveConfig;

  /// Creates a new [GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfigResponse].
  /// [deployedModelId] The DeployedModel ID of the objective config.
  /// [objectiveConfig] The objective config of for the modelmonitoring job of this deployed model.
  GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfigResponse({
    required this.deployedModelId,
    required this.objectiveConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployedModelId': deployedModelId,
      'objectiveConfig': objectiveConfig.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfigResponse(
      deployedModelId: map['deployedModelId'] as String,
      objectiveConfig: GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigResponse.fromMap((map['objectiveConfig'] as Map).cast<String, dynamic>()),
    );
  }
}


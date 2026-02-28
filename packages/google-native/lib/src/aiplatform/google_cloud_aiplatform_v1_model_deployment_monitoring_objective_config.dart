// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_model_monitoring_objective_config.dart';

/// ModelDeploymentMonitoringObjectiveConfig contains the pair of deployed_model_id to ModelMonitoringObjectiveConfig.
class GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig {
  /// The DeployedModel ID of the objective config.
  final String? deployedModelId;

  /// The objective config of for the modelmonitoring job of this deployed model.
  final GoogleCloudAiplatformV1ModelMonitoringObjectiveConfig? objectiveConfig;

  /// Creates a new [GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig].
  /// [deployedModelId] The DeployedModel ID of the objective config.
  /// [objectiveConfig] The objective config of for the modelmonitoring job of this deployed model.
  GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig({
    this.deployedModelId,
    this.objectiveConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deployedModelIdValue = deployedModelId;
    if (deployedModelIdValue != null) {
      map['deployedModelId'] = deployedModelIdValue;
    }
    final objectiveConfigValue = objectiveConfig;
    if (objectiveConfigValue != null) {
      map['objectiveConfig'] = objectiveConfigValue.toMap();
    }
    return map;
  }

  factory GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig(
      deployedModelId: map['deployedModelId'] == null
          ? null
          : map['deployedModelId'] as String,
      objectiveConfig: map['objectiveConfig'] == null
          ? null
          : GoogleCloudAiplatformV1ModelMonitoringObjectiveConfig.fromMap(
              (map['objectiveConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

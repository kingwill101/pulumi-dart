/// Model Monitoring Objective those stats and anomalies belonging to.
enum GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomaliesObjective {
  modelDeploymentMonitoringObjectiveTypeUnspecified(
      "MODEL_DEPLOYMENT_MONITORING_OBJECTIVE_TYPE_UNSPECIFIED"),
  rawFeatureSkew("RAW_FEATURE_SKEW"),
  rawFeatureDrift("RAW_FEATURE_DRIFT"),
  featureAttributionSkew("FEATURE_ATTRIBUTION_SKEW"),
  featureAttributionDrift("FEATURE_ATTRIBUTION_DRIFT");

  const GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomaliesObjective(
      this.value);
  final String value;

  static GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomaliesObjective
      fromValue(String value) {
    for (final item
        in GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomaliesObjective
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudAiplatformV1beta1ModelMonitoringStatsAnomaliesObjective value: $value');
  }
}

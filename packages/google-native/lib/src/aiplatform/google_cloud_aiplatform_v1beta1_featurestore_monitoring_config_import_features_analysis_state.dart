/// Whether to enable / disable / inherite default hebavior for import features analysis.
enum GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigImportFeaturesAnalysisState {
  stateUnspecified("STATE_UNSPECIFIED"),
  default_("DEFAULT"),
  enabled("ENABLED"),
  disabled("DISABLED");

  const GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigImportFeaturesAnalysisState(
      this.value);
  final String value;

  static GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigImportFeaturesAnalysisState
      fromValue(String value) {
    for (final item
        in GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigImportFeaturesAnalysisState
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigImportFeaturesAnalysisState value: $value');
  }
}

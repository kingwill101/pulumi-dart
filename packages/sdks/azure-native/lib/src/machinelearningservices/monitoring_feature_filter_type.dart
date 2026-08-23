/// [Required] Specifies the feature filter to leverage when selecting features to calculate metrics over.
enum MonitoringFeatureFilterType {
  allFeatures("AllFeatures"),
  topNByAttribution("TopNByAttribution"),
  featureSubset("FeatureSubset");

  const MonitoringFeatureFilterType(this.wireValue);
  final String wireValue;

  static MonitoringFeatureFilterType fromValue(String value) {
    for (final item in MonitoringFeatureFilterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringFeatureFilterType value: $value');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Specifies the feature filter to leverage when selecting features to calculate metrics over.
enum MonitoringFeatureFilterType implements pulumi.PulumiEnum<String> {
  allFeatures("AllFeatures"),
  topNByAttribution("TopNByAttribution"),
  featureSubset("FeatureSubset");

  const MonitoringFeatureFilterType(this.wireValue);
  @override
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

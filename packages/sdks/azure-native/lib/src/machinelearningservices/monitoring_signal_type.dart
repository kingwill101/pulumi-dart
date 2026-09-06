import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Specifies the type of signal to monitor.
enum MonitoringSignalType implements pulumi.PulumiEnum<String> {
  dataDrift("DataDrift"),
  predictionDrift("PredictionDrift"),
  dataQuality("DataQuality"),
  featureAttributionDrift("FeatureAttributionDrift"),
  custom("Custom");

  const MonitoringSignalType(this.wireValue);
  @override
  final String wireValue;

  static MonitoringSignalType fromValue(String value) {
    for (final item in MonitoringSignalType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringSignalType value: $value');
  }
}

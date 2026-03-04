/// [Required] Specifies the type of signal to monitor.
enum MonitoringSignalType {
  valueDataDrift("DataDrift"),
  valuePredictionDrift("PredictionDrift"),
  valueDataQuality("DataQuality"),
  valueFeatureAttributionDrift("FeatureAttributionDrift"),
  valueCustom("Custom");

  const MonitoringSignalType(this.wireValue);
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

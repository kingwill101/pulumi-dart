/// [Required] Specifies the data type of the metric threshold.
enum MonitoringFeatureDataType {
  numerical("Numerical"),
  categorical("Categorical");

  const MonitoringFeatureDataType(this.wireValue);
  final String wireValue;

  static MonitoringFeatureDataType fromValue(String value) {
    for (final item in MonitoringFeatureDataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringFeatureDataType value: $value');
  }
}

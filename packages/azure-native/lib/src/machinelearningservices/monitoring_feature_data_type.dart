/// [Required] Specifies the data type of the metric threshold.
enum MonitoringFeatureDataType {
  valueNumerical("Numerical"),
  valueCategorical("Categorical");

  const MonitoringFeatureDataType(this.value);
  final String value;

  static MonitoringFeatureDataType fromValue(String value) {
    for (final item in MonitoringFeatureDataType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MonitoringFeatureDataType value: $value');
  }
}


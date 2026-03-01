enum EnterpriseCrmEventbusProtoTaskAlertConfigMetricType {
  metricTypeUnspecified("METRIC_TYPE_UNSPECIFIED"),
  taskErrorRate("TASK_ERROR_RATE"),
  taskWarningRate("TASK_WARNING_RATE"),
  taskRate("TASK_RATE"),
  taskAverageDuration("TASK_AVERAGE_DURATION"),
  taskPercentileDuration("TASK_PERCENTILE_DURATION");

  const EnterpriseCrmEventbusProtoTaskAlertConfigMetricType(this.value);
  final String value;

  static EnterpriseCrmEventbusProtoTaskAlertConfigMetricType fromValue(
    String value,
  ) {
    for (final item
        in EnterpriseCrmEventbusProtoTaskAlertConfigMetricType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmEventbusProtoTaskAlertConfigMetricType value: $value',
    );
  }
}

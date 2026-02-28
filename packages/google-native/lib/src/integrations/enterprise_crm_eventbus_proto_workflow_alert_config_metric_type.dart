enum EnterpriseCrmEventbusProtoWorkflowAlertConfigMetricType {
  metricTypeUnspecified("METRIC_TYPE_UNSPECIFIED"),
  eventErrorRate("EVENT_ERROR_RATE"),
  eventWarningRate("EVENT_WARNING_RATE"),
  taskErrorRate("TASK_ERROR_RATE"),
  taskWarningRate("TASK_WARNING_RATE"),
  taskRate("TASK_RATE"),
  eventRate("EVENT_RATE"),
  eventAverageDuration("EVENT_AVERAGE_DURATION"),
  eventPercentileDuration("EVENT_PERCENTILE_DURATION"),
  taskAverageDuration("TASK_AVERAGE_DURATION"),
  taskPercentileDuration("TASK_PERCENTILE_DURATION");

  const EnterpriseCrmEventbusProtoWorkflowAlertConfigMetricType(this.value);
  final String value;

  static EnterpriseCrmEventbusProtoWorkflowAlertConfigMetricType fromValue(
      String value) {
    for (final item
        in EnterpriseCrmEventbusProtoWorkflowAlertConfigMetricType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EnterpriseCrmEventbusProtoWorkflowAlertConfigMetricType value: $value');
  }
}

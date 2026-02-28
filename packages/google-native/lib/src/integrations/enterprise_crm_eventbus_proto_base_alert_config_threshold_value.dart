// ignore_for_file: unused_element, unnecessary_cast

/// The threshold value of the metric, above or below which the alert should be triggered. See EventAlertConfig or TaskAlertConfig for the different alert metric types in each case. For the *RATE metrics, one or both of these fields may be set. Zero is the default value and can be left at that. For *PERCENTILE_DURATION metrics, one or both of these fields may be set, and also, the duration threshold value should be specified in the threshold_duration_ms member below. For *AVERAGE_DURATION metrics, these fields should not be set at all. A different member, threshold_duration_ms, must be set in the EventAlertConfig or the TaskAlertConfig.
class EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue {
  final String? absolute;
  final int? percentage;

  /// Creates a new [EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue].
  /// [absolute] Optional.
  /// [percentage] Optional.
  EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue({
    this.absolute,
    this.percentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final absoluteValue = absolute;
    if (absoluteValue != null) {
      map['absolute'] = absoluteValue;
    }
    final percentageValue = percentage;
    if (percentageValue != null) {
      map['percentage'] = percentageValue;
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoBaseAlertConfigThresholdValue(
      absolute: map['absolute'] == null ? null : map['absolute'] as String,
      percentage: map['percentage'] == null ? null : map['percentage'] as int,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

/// The threshold value of the metric, above or below which the alert should be triggered. See EventAlertConfig or TaskAlertConfig for the different alert metric types in each case. For the *RATE metrics, one or both of these fields may be set. Zero is the default value and can be left at that. For *PERCENTILE_DURATION metrics, one or both of these fields may be set, and also, the duration threshold value should be specified in the threshold_duration_ms member below. For *AVERAGE_DURATION metrics, these fields should not be set at all. A different member, threshold_duration_ms, must be set in the EventAlertConfig or the TaskAlertConfig.
class GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValueResponse {
  /// Absolute value threshold.
  final String absolute;

  /// Percentage threshold.
  final int percentage;

  /// Creates a new [GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValueResponse].
  /// [absolute] Absolute value threshold.
  /// [percentage] Percentage threshold.
  GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValueResponse({
    required this.absolute,
    required this.percentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['absolute'] = absolute;
    map['percentage'] = percentage;
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValueResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValueResponse(
      absolute: map['absolute'] as String,
      percentage: map['percentage'] as int,
    );
  }
}

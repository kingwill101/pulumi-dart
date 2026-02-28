// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_integration_alert_config_threshold_value_response.dart';

/// Message to be used to configure custom alerting in the {@code EventConfig} protos for an event.
class GoogleCloudIntegrationsV1alphaIntegrationAlertConfigResponse {
  /// The period over which the metric value should be aggregated and evaluated. Format is , where integer should be a positive integer and unit should be one of (s,m,h,d,w) meaning (second, minute, hour, day, week). For an EXPECTED_MIN threshold, this aggregation_period must be lesser than 24 hours.
  final String aggregationPeriod;
  /// For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.
  final int alertThreshold;
  /// Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this integration alert.
  final bool disableAlert;
  /// Name of the alert. This will be displayed in the alert subject. If set, this name should be unique within the scope of the integration.
  final String displayName;
  /// Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.
  final String durationThreshold;
  /// The type of metric.
  final String metricType;
  /// For either events or tasks, depending on the type of alert, count only final attempts, not retries.
  final bool onlyFinalAttempt;
  /// The threshold type, whether lower(expected_min) or upper(expected_max), for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
  final String thresholdType;
  /// The metric value, above or below which the alert should be triggered.
  final GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValueResponse thresholdValue;

  /// Creates a new [GoogleCloudIntegrationsV1alphaIntegrationAlertConfigResponse].
  /// [aggregationPeriod] The period over which the metric value should be aggregated and evaluated. Format is , where integer should be a positive integer and unit should be one of (s,m,h,d,w) meaning (second, minute, hour, day, week). For an EXPECTED_MIN threshold, this aggregation_period must be lesser than 24 hours.
  /// [alertThreshold] For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.
  /// [disableAlert] Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this integration alert.
  /// [displayName] Name of the alert. This will be displayed in the alert subject. If set, this name should be unique within the scope of the integration.
  /// [durationThreshold] Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.
  /// [metricType] The type of metric.
  /// [onlyFinalAttempt] For either events or tasks, depending on the type of alert, count only final attempts, not retries.
  /// [thresholdType] The threshold type, whether lower(expected_min) or upper(expected_max), for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
  /// [thresholdValue] The metric value, above or below which the alert should be triggered.
  GoogleCloudIntegrationsV1alphaIntegrationAlertConfigResponse({
    required this.aggregationPeriod,
    required this.alertThreshold,
    required this.disableAlert,
    required this.displayName,
    required this.durationThreshold,
    required this.metricType,
    required this.onlyFinalAttempt,
    required this.thresholdType,
    required this.thresholdValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationPeriod': aggregationPeriod,
      'alertThreshold': alertThreshold,
      'disableAlert': disableAlert,
      'displayName': displayName,
      'durationThreshold': durationThreshold,
      'metricType': metricType,
      'onlyFinalAttempt': onlyFinalAttempt,
      'thresholdType': thresholdType,
      'thresholdValue': thresholdValue.toMap(),
    };
  }

  factory GoogleCloudIntegrationsV1alphaIntegrationAlertConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaIntegrationAlertConfigResponse(
      aggregationPeriod: map['aggregationPeriod'] as String,
      alertThreshold: map['alertThreshold'] as int,
      disableAlert: map['disableAlert'] as bool,
      displayName: map['displayName'] as String,
      durationThreshold: map['durationThreshold'] as String,
      metricType: map['metricType'] as String,
      onlyFinalAttempt: map['onlyFinalAttempt'] as bool,
      thresholdType: map['thresholdType'] as String,
      thresholdValue: GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValueResponse.fromMap((map['thresholdValue'] as Map).cast<String, dynamic>()),
    );
  }
}


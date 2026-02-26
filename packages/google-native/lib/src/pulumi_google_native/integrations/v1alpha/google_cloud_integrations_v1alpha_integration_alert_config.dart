// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_integrations_v1alpha_integration_alert_config_metric_type.dart';
import 'google_cloud_integrations_v1alpha_integration_alert_config_threshold_type.dart';
import 'google_cloud_integrations_v1alpha_integration_alert_config_threshold_value.dart';

/// Message to be used to configure custom alerting in the {@code EventConfig} protos for an event.
class GoogleCloudIntegrationsV1alphaIntegrationAlertConfig {
  /// The period over which the metric value should be aggregated and evaluated. Format is , where integer should be a positive integer and unit should be one of (s,m,h,d,w) meaning (second, minute, hour, day, week). For an EXPECTED_MIN threshold, this aggregation_period must be lesser than 24 hours.
  final String? aggregationPeriod;

  /// For how many contiguous aggregation periods should the expected min or max be violated for the alert to be fired.
  final int? alertThreshold;

  /// Set to false by default. When set to true, the metrics are not aggregated or pushed to Monarch for this integration alert.
  final bool? disableAlert;

  /// Name of the alert. This will be displayed in the alert subject. If set, this name should be unique within the scope of the integration.
  final String? displayName;

  /// Should be specified only for *AVERAGE_DURATION and *PERCENTILE_DURATION metrics. This member should be used to specify what duration value the metrics should exceed for the alert to trigger.
  final String? durationThreshold;

  /// The type of metric.
  final GoogleCloudIntegrationsV1alphaIntegrationAlertConfigMetricType?
      metricType;

  /// For either events or tasks, depending on the type of alert, count only final attempts, not retries.
  final bool? onlyFinalAttempt;

  /// The threshold type, whether lower(expected_min) or upper(expected_max), for which this alert is being configured. If value falls below expected_min or exceeds expected_max, an alert will be fired.
  final GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdType?
      thresholdType;

  /// The metric value, above or below which the alert should be triggered.
  final GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue?
      thresholdValue;

  GoogleCloudIntegrationsV1alphaIntegrationAlertConfig({
    this.aggregationPeriod,
    this.alertThreshold,
    this.disableAlert,
    this.displayName,
    this.durationThreshold,
    this.metricType,
    this.onlyFinalAttempt,
    this.thresholdType,
    this.thresholdValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationPeriodValue = aggregationPeriod;
    if (aggregationPeriodValue != null) {
      map['aggregationPeriod'] = aggregationPeriodValue;
    }
    final alertThresholdValue = alertThreshold;
    if (alertThresholdValue != null) {
      map['alertThreshold'] = alertThresholdValue;
    }
    final disableAlertValue = disableAlert;
    if (disableAlertValue != null) {
      map['disableAlert'] = disableAlertValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final durationThresholdValue = durationThreshold;
    if (durationThresholdValue != null) {
      map['durationThreshold'] = durationThresholdValue;
    }
    final metricTypeValue = metricType;
    if (metricTypeValue != null) {
      map['metricType'] = metricTypeValue.value;
    }
    final onlyFinalAttemptValue = onlyFinalAttempt;
    if (onlyFinalAttemptValue != null) {
      map['onlyFinalAttempt'] = onlyFinalAttemptValue;
    }
    final thresholdTypeValue = thresholdType;
    if (thresholdTypeValue != null) {
      map['thresholdType'] = thresholdTypeValue.value;
    }
    final thresholdValueValue = thresholdValue;
    if (thresholdValueValue != null) {
      map['thresholdValue'] = thresholdValueValue.toMap();
    }
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaIntegrationAlertConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaIntegrationAlertConfig(
      aggregationPeriod: map['aggregationPeriod'] == null
          ? null
          : map['aggregationPeriod'] as String,
      alertThreshold:
          map['alertThreshold'] == null ? null : map['alertThreshold'] as int,
      disableAlert:
          map['disableAlert'] == null ? null : map['disableAlert'] as bool,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      durationThreshold: map['durationThreshold'] == null
          ? null
          : map['durationThreshold'] as String,
      metricType: map['metricType'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaIntegrationAlertConfigMetricType
              .fromValue(map['metricType'] as String),
      onlyFinalAttempt: map['onlyFinalAttempt'] == null
          ? null
          : map['onlyFinalAttempt'] as bool,
      thresholdType: map['thresholdType'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdType
              .fromValue(map['thresholdType'] as String),
      thresholdValue: map['thresholdValue'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaIntegrationAlertConfigThresholdValue
              .fromMap((map['thresholdValue'] as Map).cast<String, dynamic>()),
    );
  }
}

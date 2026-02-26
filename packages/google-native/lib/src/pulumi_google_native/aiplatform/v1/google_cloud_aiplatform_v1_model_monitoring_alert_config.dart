// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_model_monitoring_alert_config_email_alert_config.dart';

class GoogleCloudAiplatformV1ModelMonitoringAlertConfig {
  /// Email alert config.
  final GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig?
      emailAlertConfig;

  /// Dump the anomalies to Cloud Logging. The anomalies will be put to json payload encoded from proto google.cloud.aiplatform.logging.ModelMonitoringAnomaliesLogEntry. This can be further sinked to Pub/Sub or any other services supported by Cloud Logging.
  final bool? enableLogging;

  /// Resource names of the NotificationChannels to send alert. Must be of the format `projects//notificationChannels/`
  final List<String>? notificationChannels;

  GoogleCloudAiplatformV1ModelMonitoringAlertConfig({
    this.emailAlertConfig,
    this.enableLogging,
    this.notificationChannels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final emailAlertConfigValue = emailAlertConfig;
    if (emailAlertConfigValue != null) {
      map['emailAlertConfig'] = emailAlertConfigValue.toMap();
    }
    final enableLoggingValue = enableLogging;
    if (enableLoggingValue != null) {
      map['enableLogging'] = enableLoggingValue;
    }
    final notificationChannelsValue = notificationChannels;
    if (notificationChannelsValue != null) {
      map['notificationChannels'] = notificationChannelsValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1ModelMonitoringAlertConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelMonitoringAlertConfig(
      emailAlertConfig: map['emailAlertConfig'] == null
          ? null
          : GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig
              .fromMap(
                  (map['emailAlertConfig'] as Map).cast<String, dynamic>()),
      enableLogging:
          map['enableLogging'] == null ? null : map['enableLogging'] as bool,
      notificationChannels: map['notificationChannels'] == null
          ? null
          : (map['notificationChannels'] as List).cast<String>(),
    );
  }
}

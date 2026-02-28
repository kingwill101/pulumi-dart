// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_model_monitoring_alert_config_email_alert_config_response.dart';

class GoogleCloudAiplatformV1ModelMonitoringAlertConfigResponse {
  /// Email alert config.
  final GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfigResponse
      emailAlertConfig;

  /// Dump the anomalies to Cloud Logging. The anomalies will be put to json payload encoded from proto google.cloud.aiplatform.logging.ModelMonitoringAnomaliesLogEntry. This can be further sinked to Pub/Sub or any other services supported by Cloud Logging.
  final bool enableLogging;

  /// Resource names of the NotificationChannels to send alert. Must be of the format `projects//notificationChannels/`
  final List<String> notificationChannels;

  /// Creates a new [GoogleCloudAiplatformV1ModelMonitoringAlertConfigResponse].
  /// [emailAlertConfig] Email alert config.
  /// [enableLogging] Dump the anomalies to Cloud Logging. The anomalies will be put to json payload encoded from proto google.cloud.aiplatform.logging.ModelMonitoringAnomaliesLogEntry. This can be further sinked to Pub/Sub or any other services supported by Cloud Logging.
  /// [notificationChannels] Resource names of the NotificationChannels to send alert. Must be of the format `projects//notificationChannels/`
  GoogleCloudAiplatformV1ModelMonitoringAlertConfigResponse({
    required this.emailAlertConfig,
    required this.enableLogging,
    required this.notificationChannels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['emailAlertConfig'] = emailAlertConfig.toMap();
    map['enableLogging'] = enableLogging;
    map['notificationChannels'] = notificationChannels;
    return map;
  }

  factory GoogleCloudAiplatformV1ModelMonitoringAlertConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelMonitoringAlertConfigResponse(
      emailAlertConfig:
          GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfigResponse
              .fromMap(
                  (map['emailAlertConfig'] as Map).cast<String, dynamic>()),
      enableLogging: map['enableLogging'] as bool,
      notificationChannels:
          (map['notificationChannels'] as List).cast<String>(),
    );
  }
}

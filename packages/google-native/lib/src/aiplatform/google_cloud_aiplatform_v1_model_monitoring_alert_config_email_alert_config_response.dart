// ignore_for_file: unused_element, unnecessary_cast

/// The config for email alert.
class GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfigResponse {
  /// The email addresses to send the alert.
  final List<String> userEmails;

  /// Creates a new [GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfigResponse].
  /// [userEmails] The email addresses to send the alert.
  GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfigResponse({
    required this.userEmails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['userEmails'] = userEmails;
    return map;
  }

  factory GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfigResponse(
      userEmails: (map['userEmails'] as List).cast<String>(),
    );
  }
}

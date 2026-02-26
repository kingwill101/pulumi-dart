// ignore_for_file: unused_element, unnecessary_cast

/// The config for email alert.
class GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigEmailAlertConfigResponse {
  /// The email addresses to send the alert.
  final List<String> userEmails;

  GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigEmailAlertConfigResponse({
    required this.userEmails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['userEmails'] = userEmails;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigEmailAlertConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringAlertConfigEmailAlertConfigResponse(
      userEmails: (map['userEmails'] as List).cast<String>(),
    );
  }
}

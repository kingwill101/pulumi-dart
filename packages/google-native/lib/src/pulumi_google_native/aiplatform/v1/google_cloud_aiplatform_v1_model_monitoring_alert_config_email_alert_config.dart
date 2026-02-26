// ignore_for_file: unused_element, unnecessary_cast

/// The config for email alert.
class GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig {
  /// The email addresses to send the alert.
  final List<String>? userEmails;

  GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig({
    this.userEmails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final userEmailsValue = userEmails;
    if (userEmailsValue != null) {
      map['userEmails'] = userEmailsValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig(
      userEmails: map['userEmails'] == null
          ? null
          : (map['userEmails'] as List).cast<String>(),
    );
  }
}

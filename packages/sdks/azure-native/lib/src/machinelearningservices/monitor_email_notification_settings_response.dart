// ignore_for_file: unused_element, unnecessary_cast


class MonitorEmailNotificationSettingsResponse {
  /// The email recipient list which has a limitation of 499 characters in total.
  final List<String>? emails;

  /// Creates a new [MonitorEmailNotificationSettingsResponse].
  /// [emails] The email recipient list which has a limitation of 499 characters in total.
  MonitorEmailNotificationSettingsResponse({
    this.emails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
    };
  }

  factory MonitorEmailNotificationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MonitorEmailNotificationSettingsResponse(
      emails: map['emails'] == null ? null : (map['emails'] as List).cast<String>(),
    );
  }
}


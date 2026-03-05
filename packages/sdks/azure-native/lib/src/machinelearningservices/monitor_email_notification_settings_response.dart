// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorEmailNotificationSettingsResponse {
  /// The email recipient list which has a limitation of 499 characters in total.
  final pulumi.Input<List<String>>? emails;

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
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}


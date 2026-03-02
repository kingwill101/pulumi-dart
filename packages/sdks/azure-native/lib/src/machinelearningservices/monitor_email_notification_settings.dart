// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MonitorEmailNotificationSettings {
  /// The email recipient list which has a limitation of 499 characters in total.
  final pulumi.Input<List<String>>? emails;

  /// Creates a new [MonitorEmailNotificationSettings].
  /// [emails] The email recipient list which has a limitation of 499 characters in total.
  MonitorEmailNotificationSettings({
    this.emails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
    };
  }

  factory MonitorEmailNotificationSettings.fromMap(Map<String, dynamic> map) {
    return MonitorEmailNotificationSettings(
      emails: map['emails'] == null ? null : ((map['emails'] as List).cast<String>()).input(),
    );
  }
}


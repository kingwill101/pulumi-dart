// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_job_alert_destinations_slack_webhook.dart';

class AppSpecJobAlertDestinations {
  /// Determines which emails receive alerts. The emails must be team members. If not set, the team's email is used by default.
  final List<String>? emails;
  /// Determines which slack channels or users receive alerts.
  final List<AppSpecJobAlertDestinationsSlackWebhook>? slackWebhooks;

  /// Creates a new [AppSpecJobAlertDestinations].
  /// [emails] Determines which emails receive alerts. The emails must be team members. If not set, the team's email is used by default.
  /// [slackWebhooks] Determines which slack channels or users receive alerts.
  AppSpecJobAlertDestinations({
    this.emails,
    this.slackWebhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slackWebhooks': ?slackWebhooks == null ? null : pulumi.Input.encodeList<AppSpecJobAlertDestinationsSlackWebhook, Map<String, dynamic>>(slackWebhooks!, (value) => value.toMap()),
    };
  }

  factory AppSpecJobAlertDestinations.fromMap(Map<String, dynamic> map) {
    return AppSpecJobAlertDestinations(
      emails: map['emails'] == null ? null : (map['emails'] as List).cast<String>(),
      slackWebhooks: map['slackWebhooks'] == null ? null : pulumi.Input.decodeList<AppSpecJobAlertDestinationsSlackWebhook>(map['slackWebhooks'], (value) => AppSpecJobAlertDestinationsSlackWebhook.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


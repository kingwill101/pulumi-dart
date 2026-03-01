// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_function_alert_destinations_slack_webhook.dart';

class AppSpecFunctionAlertDestinations {
  /// Determines which emails receive alerts. The emails must be team members. If not set, the team's email is used by default.
  final List<String>? emails;
  /// Determines which slack channels or users receive alerts.
  final List<AppSpecFunctionAlertDestinationsSlackWebhook>? slackWebhooks;

  /// Creates a new [AppSpecFunctionAlertDestinations].
  /// [emails] Determines which emails receive alerts. The emails must be team members. If not set, the team's email is used by default.
  /// [slackWebhooks] Determines which slack channels or users receive alerts.
  AppSpecFunctionAlertDestinations({
    this.emails,
    this.slackWebhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slackWebhooks': ?slackWebhooks == null ? null : pulumi.Input.encodeList<AppSpecFunctionAlertDestinationsSlackWebhook, Map<String, dynamic>>(slackWebhooks!, (value) => value.toMap()),
    };
  }

  factory AppSpecFunctionAlertDestinations.fromMap(Map<String, dynamic> map) {
    return AppSpecFunctionAlertDestinations(
      emails: map['emails'] == null ? null : (map['emails'] as List).cast<String>(),
      slackWebhooks: map['slackWebhooks'] == null ? null : pulumi.Input.decodeList<AppSpecFunctionAlertDestinationsSlackWebhook>(map['slackWebhooks'], (value) => AppSpecFunctionAlertDestinationsSlackWebhook.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


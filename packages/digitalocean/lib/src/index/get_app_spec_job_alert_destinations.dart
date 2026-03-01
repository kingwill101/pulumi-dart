// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_job_alert_destinations_slack_webhook.dart';

class GetAppSpecJobAlertDestinations {
  final List<String>? emails;
  final List<GetAppSpecJobAlertDestinationsSlackWebhook>? slackWebhooks;

  /// Creates a new [GetAppSpecJobAlertDestinations].
  /// [emails] Optional.
  /// [slackWebhooks] Optional.
  GetAppSpecJobAlertDestinations({
    this.emails,
    this.slackWebhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slackWebhooks': ?slackWebhooks == null ? null : pulumi.Input.encodeList<GetAppSpecJobAlertDestinationsSlackWebhook, Map<String, dynamic>>(slackWebhooks!, (value) => value.toMap()),
    };
  }

  factory GetAppSpecJobAlertDestinations.fromMap(Map<String, dynamic> map) {
    return GetAppSpecJobAlertDestinations(
      emails: map['emails'] == null ? null : (map['emails'] as List).cast<String>(),
      slackWebhooks: map['slackWebhooks'] == null ? null : pulumi.Input.decodeList<GetAppSpecJobAlertDestinationsSlackWebhook>(map['slackWebhooks'], (value) => GetAppSpecJobAlertDestinationsSlackWebhook.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


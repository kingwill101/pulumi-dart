// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_function_alert_destinations_slack_webhook.dart';

class GetAppSpecFunctionAlertDestinations {
  final List<String>? emails;
  final List<GetAppSpecFunctionAlertDestinationsSlackWebhook>? slackWebhooks;

  /// Creates a new [GetAppSpecFunctionAlertDestinations].
  /// [emails] Optional.
  /// [slackWebhooks] Optional.
  GetAppSpecFunctionAlertDestinations({
    this.emails,
    this.slackWebhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emails': ?emails,
      'slackWebhooks': ?slackWebhooks == null ? null : pulumi.Input.encodeList<GetAppSpecFunctionAlertDestinationsSlackWebhook, Map<String, dynamic>>(slackWebhooks!, (value) => value.toMap()),
    };
  }

  factory GetAppSpecFunctionAlertDestinations.fromMap(Map<String, dynamic> map) {
    return GetAppSpecFunctionAlertDestinations(
      emails: map['emails'] == null ? null : (map['emails'] as List).cast<String>(),
      slackWebhooks: map['slackWebhooks'] == null ? null : pulumi.Input.decodeList<GetAppSpecFunctionAlertDestinationsSlackWebhook>(map['slackWebhooks'], (value) => GetAppSpecFunctionAlertDestinationsSlackWebhook.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


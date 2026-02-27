// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'usage_rule_response.dart';

/// Configuration controlling usage of a service.
class UsageResponse {
  /// The full resource name of a channel used for sending notifications to the service producer. Google Service Management currently only supports [Google Cloud Pub/Sub](https://cloud.google.com/pubsub) as a notification channel. To use Google Cloud Pub/Sub as the channel, this must be the name of a Cloud Pub/Sub topic that uses the Cloud Pub/Sub topic name format documented in https://cloud.google.com/pubsub/docs/overview.
  final String producerNotificationChannel;

  /// Requirements that must be satisfied before a consumer project can use the service. Each requirement is of the form /; for example 'serviceusage.googleapis.com/billing-enabled'. For Google APIs, a Terms of Service requirement must be included here. Google Cloud APIs must include "serviceusage.googleapis.com/tos/cloud". Other Google APIs should include "serviceusage.googleapis.com/tos/universal". Additional ToS can be included based on the business needs.
  final List<String> requirements;

  /// A list of usage rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final List<UsageRuleResponse> rules;

  UsageResponse({
    required this.producerNotificationChannel,
    required this.requirements,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['producerNotificationChannel'] = producerNotificationChannel;
    map['requirements'] = requirements;
    map['rules'] = Input.encodeList<UsageRuleResponse, Map<String, dynamic>>(
        rules, (value) => value.toMap());
    return map;
  }

  factory UsageResponse.fromMap(Map<String, dynamic> map) {
    return UsageResponse(
      producerNotificationChannel: map['producerNotificationChannel'] as String,
      requirements: (map['requirements'] as List).cast<String>(),
      rules: Input.decodeList<UsageRuleResponse>(
          map['rules'],
          (value) => UsageRuleResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

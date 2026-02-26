// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'usage_rule.dart';

/// Configuration controlling usage of a service.
class Usage {
  /// The full resource name of a channel used for sending notifications to the service producer. Google Service Management currently only supports [Google Cloud Pub/Sub](https://cloud.google.com/pubsub) as a notification channel. To use Google Cloud Pub/Sub as the channel, this must be the name of a Cloud Pub/Sub topic that uses the Cloud Pub/Sub topic name format documented in https://cloud.google.com/pubsub/docs/overview.
  final String? producerNotificationChannel;

  /// Requirements that must be satisfied before a consumer project can use the service. Each requirement is of the form /; for example 'serviceusage.googleapis.com/billing-enabled'. For Google APIs, a Terms of Service requirement must be included here. Google Cloud APIs must include "serviceusage.googleapis.com/tos/cloud". Other Google APIs should include "serviceusage.googleapis.com/tos/universal". Additional ToS can be included based on the business needs.
  final List<String>? requirements;

  /// A list of usage rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final List<UsageRule>? rules;

  Usage({
    this.producerNotificationChannel,
    this.requirements,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final producerNotificationChannelValue = producerNotificationChannel;
    if (producerNotificationChannelValue != null) {
      map['producerNotificationChannel'] = producerNotificationChannelValue;
    }
    final requirementsValue = requirements;
    if (requirementsValue != null) {
      map['requirements'] = requirementsValue;
    }
    final rulesValue = rules;
    if (rulesValue != null) {
      map['rules'] = Input.encodeList<UsageRule, Map<String, dynamic>>(
          rulesValue, (value) => value.toMap());
    }
    return map;
  }

  factory Usage.fromMap(Map<String, dynamic> map) {
    return Usage(
      producerNotificationChannel: map['producerNotificationChannel'] == null
          ? null
          : map['producerNotificationChannel'] as String,
      requirements: map['requirements'] == null
          ? null
          : (map['requirements'] as List).cast<String>(),
      rules: map['rules'] == null
          ? null
          : Input.decodeList<UsageRule>(
              map['rules'],
              (value) =>
                  UsageRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_dev_ops_webhook.dart';

/// Configuration for notification.
class NotificationSetting {
  /// Send email notification to user on specified notification type
  final pulumi.Input<List<String>>? emailOn;
  /// This is the email recipient list which has a limitation of 499 characters in total concat with comma separator
  final pulumi.Input<List<String>>? emails;
  /// Send webhook callback to a service. Key is a user-provided name for the webhook.
  final pulumi.Input<Map<String, AzureDevOpsWebhook>>? webhooks;

  /// Creates a new [NotificationSetting].
  /// [emailOn] Send email notification to user on specified notification type
  /// [emails] This is the email recipient list which has a limitation of 499 characters in total concat with comma separator
  /// [webhooks] Send webhook callback to a service. Key is a user-provided name for the webhook.
  NotificationSetting({
    this.emailOn,
    this.emails,
    this.webhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailOn': ?emailOn,
      'emails': ?emails,
      'webhooks': ?pulumi.Input.mapOptionalInputValue<Map<String, AzureDevOpsWebhook>, Map<String, Map<String, dynamic>>>(webhooks, (value) => pulumi.Input.encodeMapValues<AzureDevOpsWebhook, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NotificationSetting.fromMap(Map<String, dynamic> map) {
    return NotificationSetting(
      emailOn: map['emailOn'] == null ? null : ((map['emailOn'] as List).cast<String>()).input(),
      emails: map['emails'] == null ? null : ((map['emails'] as List).cast<String>()).input(),
      webhooks: map['webhooks'] == null ? null : (pulumi.Input.decodeMapValues<AzureDevOpsWebhook>(map['webhooks'], (value) => AzureDevOpsWebhook.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


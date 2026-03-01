// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_dev_ops_webhook_response.dart';

/// Configuration for notification.
class NotificationSettingResponse {
  /// Send email notification to user on specified notification type
  final List<String>? emailOn;
  /// This is the email recipient list which has a limitation of 499 characters in total concat with comma separator
  final List<String>? emails;
  /// Send webhook callback to a service. Key is a user-provided name for the webhook.
  final Map<String, AzureDevOpsWebhookResponse>? webhooks;

  /// Creates a new [NotificationSettingResponse].
  /// [emailOn] Send email notification to user on specified notification type
  /// [emails] This is the email recipient list which has a limitation of 499 characters in total concat with comma separator
  /// [webhooks] Send webhook callback to a service. Key is a user-provided name for the webhook.
  NotificationSettingResponse({
    this.emailOn,
    this.emails,
    this.webhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailOn': ?emailOn,
      'emails': ?emails,
      'webhooks': ?webhooks == null ? null : pulumi.Input.encodeMapValues<AzureDevOpsWebhookResponse, Map<String, dynamic>>(webhooks!, (value) => value.toMap()),
    };
  }

  factory NotificationSettingResponse.fromMap(Map<String, dynamic> map) {
    return NotificationSettingResponse(
      emailOn: map['emailOn'] == null ? null : (map['emailOn'] as List).cast<String>(),
      emails: map['emails'] == null ? null : (map['emails'] as List).cast<String>(),
      webhooks: map['webhooks'] == null ? null : pulumi.Input.decodeMapValues<AzureDevOpsWebhookResponse>(map['webhooks'], (value) => AzureDevOpsWebhookResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


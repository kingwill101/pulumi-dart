// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_notification_response.dart';
import 'webhook_notification_response.dart';

/// Autoscale notification.
class AutoscaleNotificationResponse {
  /// the email notification.
  final pulumi.Input<EmailNotificationResponse>? email;
  /// the operation associated with the notification and its value must be "scale"
  final pulumi.Input<String> operation;
  /// the collection of webhook notifications.
  final pulumi.Input<List<WebhookNotificationResponse>>? webhooks;

  /// Creates a new [AutoscaleNotificationResponse].
  /// [email] the email notification.
  /// [operation] the operation associated with the notification and its value must be "scale"
  /// [webhooks] the collection of webhook notifications.
  AutoscaleNotificationResponse({
    this.email,
    required this.operation,
    this.webhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?pulumi.Input.mapOptionalInputValue<EmailNotificationResponse, Map<String, dynamic>>(email, (value) => value.toMap()),
      'operation': operation,
      'webhooks': ?pulumi.Input.mapOptionalInputValue<List<WebhookNotificationResponse>, List<Map<String, dynamic>>>(webhooks, (value) => pulumi.Input.encodeList<WebhookNotificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutoscaleNotificationResponse.fromMap(Map<String, dynamic> map) {
    return AutoscaleNotificationResponse(
      email: map['email'] == null ? null : (EmailNotificationResponse.fromMap((map['email']! as Map).cast<String, dynamic>())).input(),
      operation: (map['operation'] as String).input(),
      webhooks: map['webhooks'] == null ? null : (pulumi.Input.decodeList<WebhookNotificationResponse>(map['webhooks']!, (value) => WebhookNotificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_notification.dart';
import 'operation_type.dart';
import 'webhook_notification.dart';

/// Autoscale notification.
class AutoscaleNotification {
  /// the email notification.
  final pulumi.Input<EmailNotification>? email;
  /// the operation associated with the notification and its value must be "scale"
  final pulumi.Input<OperationType> operation;
  /// the collection of webhook notifications.
  final pulumi.Input<List<WebhookNotification>>? webhooks;

  /// Creates a new [AutoscaleNotification].
  /// [email] the email notification.
  /// [operation] the operation associated with the notification and its value must be "scale"
  /// [webhooks] the collection of webhook notifications.
  const AutoscaleNotification({
    this.email,
    required this.operation,
    this.webhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?pulumi.Input.mapOptionalInputValue<EmailNotification, Map<String, dynamic>>(email, (value) => value.toMap()),
      'operation': pulumi.Input.mapInputValue<OperationType, String>(operation, (value) => value.wireValue),
      'webhooks': ?pulumi.Input.mapOptionalInputValue<List<WebhookNotification>, List<Map<String, dynamic>>>(webhooks, (value) => pulumi.Input.encodeList<WebhookNotification, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AutoscaleNotification.fromMap(Map<String, dynamic> map) {
    return AutoscaleNotification(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EmailNotification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operation: pulumi.Input.fromValue(OperationType.fromValue(map['operation']! as String)),
      webhooks: (() { final guardedValue = map['webhooks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebhookNotification>(guardedValue, (value) => WebhookNotification.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

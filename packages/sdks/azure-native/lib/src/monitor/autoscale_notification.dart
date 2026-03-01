// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_notification.dart';
import 'operation_type.dart';
import 'webhook_notification.dart';

/// Autoscale notification.
class AutoscaleNotification {
  /// the email notification.
  final EmailNotification? email;
  /// the operation associated with the notification and its value must be "scale"
  final OperationType operation;
  /// the collection of webhook notifications.
  final List<WebhookNotification>? webhooks;

  /// Creates a new [AutoscaleNotification].
  /// [email] the email notification.
  /// [operation] the operation associated with the notification and its value must be "scale"
  /// [webhooks] the collection of webhook notifications.
  AutoscaleNotification({
    this.email,
    required this.operation,
    this.webhooks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email == null ? null : email!.toMap(),
      'operation': operation.value,
      'webhooks': ?webhooks == null ? null : pulumi.Input.encodeList<WebhookNotification, Map<String, dynamic>>(webhooks!, (value) => value.toMap()),
    };
  }

  factory AutoscaleNotification.fromMap(Map<String, dynamic> map) {
    return AutoscaleNotification(
      email: map['email'] == null ? null : EmailNotification.fromMap((map['email'] as Map).cast<String, dynamic>()),
      operation: OperationType.fromValue(map['operation'] as String),
      webhooks: map['webhooks'] == null ? null : pulumi.Input.decodeList<WebhookNotification>(map['webhooks'], (value) => WebhookNotification.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


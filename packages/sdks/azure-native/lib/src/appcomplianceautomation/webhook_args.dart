// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appcomplianceautomation_webhook_args_doc}
/// The set of arguments for Webhook.
/// {@endtemplate}
/// {@macro pulumi_appcomplianceautomation_webhook_args_doc}
class WebhookArgs {
  /// content type
  final pulumi.Input<String>? contentType;
  /// whether to enable ssl verification
  final pulumi.Input<String>? enableSslVerification;
  /// under which event notification should be sent.
  final pulumi.Input<List<String>>? events;
  /// webhook payload url
  final pulumi.Input<String>? payloadUrl;
  /// Report Name.
  final pulumi.Input<String> reportName;
  /// whether to send notification under any event.
  final pulumi.Input<String>? sendAllEvents;
  /// Webhook status.
  final pulumi.Input<String>? status;
  /// whether to update webhookKey.
  final pulumi.Input<String>? updateWebhookKey;
  /// webhook secret token. If not set, this field value is null; otherwise, please set a string value.
  final pulumi.Input<String>? webhookKey;
  /// Webhook Name.
  final pulumi.Input<String>? webhookName;

  /// Creates a new [WebhookArgs].
  /// [contentType] content type
  /// [enableSslVerification] whether to enable ssl verification
  /// [events] under which event notification should be sent.
  /// [payloadUrl] webhook payload url
  /// [reportName] Report Name.
  /// [sendAllEvents] whether to send notification under any event.
  /// [status] Webhook status.
  /// [updateWebhookKey] whether to update webhookKey.
  /// [webhookKey] webhook secret token. If not set, this field value is null; otherwise, please set a string value.
  /// [webhookName] Webhook Name.
  WebhookArgs({
    this.contentType,
    this.enableSslVerification,
    this.events,
    this.payloadUrl,
    required this.reportName,
    this.sendAllEvents,
    this.status,
    this.updateWebhookKey,
    this.webhookKey,
    this.webhookName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentType': ?contentType,
      'enableSslVerification': ?enableSslVerification,
      'events': ?events,
      'payloadUrl': ?payloadUrl,
      'reportName': reportName,
      'sendAllEvents': ?sendAllEvents,
      'status': ?status,
      'updateWebhookKey': ?updateWebhookKey,
      'webhookKey': ?webhookKey,
      'webhookName': ?webhookName,
    };
  }

  factory WebhookArgs.fromMap(Map<String, dynamic> map) {
    return WebhookArgs(
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableSslVerification: (() { final guardedValue = map['enableSslVerification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      events: (() { final guardedValue = map['events']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      payloadUrl: (() { final guardedValue = map['payloadUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reportName: pulumi.Input.fromValue(map['reportName'] as String),
      sendAllEvents: (() { final guardedValue = map['sendAllEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateWebhookKey: (() { final guardedValue = map['updateWebhookKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookKey: (() { final guardedValue = map['webhookKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webhookName: (() { final guardedValue = map['webhookName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


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
      contentType: map['contentType'] == null ? null : (map['contentType']! as String).input(),
      enableSslVerification: map['enableSslVerification'] == null ? null : (map['enableSslVerification']! as String).input(),
      events: map['events'] == null ? null : ((map['events']! as List).cast<String>()).input(),
      payloadUrl: map['payloadUrl'] == null ? null : (map['payloadUrl']! as String).input(),
      reportName: (map['reportName'] as String).input(),
      sendAllEvents: map['sendAllEvents'] == null ? null : (map['sendAllEvents']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      updateWebhookKey: map['updateWebhookKey'] == null ? null : (map['updateWebhookKey']! as String).input(),
      webhookKey: map['webhookKey'] == null ? null : (map['webhookKey']! as String).input(),
      webhookName: map['webhookName'] == null ? null : (map['webhookName']! as String).input(),
    );
  }
}


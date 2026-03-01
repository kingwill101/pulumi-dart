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
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? enableSslVerification,
    pulumi.Output<List<String>>? events,
    pulumi.Output<String>? payloadUrl,
    required pulumi.Output<String> reportName,
    pulumi.Output<String>? sendAllEvents,
    pulumi.Output<String>? status,
    pulumi.Output<String>? updateWebhookKey,
    pulumi.Output<String>? webhookKey,
    pulumi.Output<String>? webhookName,
  }) :
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      enableSslVerification = pulumi.Input.asOptionalInput<String>(enableSslVerification),
      events = pulumi.Input.asOptionalInput<List<String>>(events),
      payloadUrl = pulumi.Input.asOptionalInput<String>(payloadUrl),
      reportName = pulumi.Input.asInput<String>(reportName),
      sendAllEvents = pulumi.Input.asOptionalInput<String>(sendAllEvents),
      status = pulumi.Input.asOptionalInput<String>(status),
      updateWebhookKey = pulumi.Input.asOptionalInput<String>(updateWebhookKey),
      webhookKey = pulumi.Input.asOptionalInput<String>(webhookKey),
      webhookName = pulumi.Input.asOptionalInput<String>(webhookName);

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
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      enableSslVerification: map['enableSslVerification'] == null ? null : pulumi.Output.create<String>(map['enableSslVerification'] as String),
      events: map['events'] == null ? null : pulumi.Output.create<List<String>>((map['events'] as List).cast<String>()),
      payloadUrl: map['payloadUrl'] == null ? null : pulumi.Output.create<String>(map['payloadUrl'] as String),
      reportName: pulumi.Output.create<String>(map['reportName'] as String),
      sendAllEvents: map['sendAllEvents'] == null ? null : pulumi.Output.create<String>(map['sendAllEvents'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      updateWebhookKey: map['updateWebhookKey'] == null ? null : pulumi.Output.create<String>(map['updateWebhookKey'] as String),
      webhookKey: map['webhookKey'] == null ? null : pulumi.Output.create<String>(map['webhookKey'] as String),
      webhookName: map['webhookName'] == null ? null : pulumi.Output.create<String>(map['webhookName'] as String),
    );
  }
}


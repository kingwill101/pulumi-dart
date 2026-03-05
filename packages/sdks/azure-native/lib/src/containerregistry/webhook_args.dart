// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_webhook_args_doc}
/// The set of arguments for Webhook.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_webhook_args_doc}
class WebhookArgs {
  /// The list of actions that trigger the webhook to post notifications.
  final pulumi.Input<List<String>> actions;
  /// Custom headers that will be added to the webhook notifications.
  final pulumi.Input<Map<String, String>>? customHeaders;
  /// The location of the webhook. This cannot be changed after the resource is created.
  final pulumi.Input<String>? location;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The scope of repositories where the event can be triggered. For example, 'foo:*' means events for all tags under repository 'foo'. 'foo:bar' means events for 'foo:bar' only. 'foo' is equivalent to 'foo:latest'. Empty means all events.
  final pulumi.Input<String>? scope;
  /// The service URI for the webhook to post notifications.
  final pulumi.Input<String> serviceUri;
  /// The status of the webhook at the time the operation was called.
  final pulumi.Input<String>? status;
  /// The tags for the webhook.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the webhook.
  final pulumi.Input<String>? webhookName;

  /// Creates a new [WebhookArgs].
  /// [actions] The list of actions that trigger the webhook to post notifications.
  /// [customHeaders] Custom headers that will be added to the webhook notifications.
  /// [location] The location of the webhook. This cannot be changed after the resource is created.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scope] The scope of repositories where the event can be triggered. For example, 'foo:*' means events for all tags under repository 'foo'. 'foo:bar' means events for 'foo:bar' only. 'foo' is equivalent to 'foo:latest'. Empty means all events.
  /// [serviceUri] The service URI for the webhook to post notifications.
  /// [status] The status of the webhook at the time the operation was called.
  /// [tags] The tags for the webhook.
  /// [webhookName] The name of the webhook.
  WebhookArgs({
    required this.actions,
    this.customHeaders,
    this.location,
    required this.registryName,
    required this.resourceGroupName,
    this.scope,
    required this.serviceUri,
    this.status,
    this.tags,
    this.webhookName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'customHeaders': ?customHeaders,
      'location': ?location,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'scope': ?scope,
      'serviceUri': serviceUri,
      'status': ?status,
      'tags': ?tags,
      'webhookName': ?webhookName,
    };
  }

  factory WebhookArgs.fromMap(Map<String, dynamic> map) {
    return WebhookArgs(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      customHeaders: (() { final guardedValue = map['customHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceUri: pulumi.Input.fromValue(map['serviceUri'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      webhookName: (() { final guardedValue = map['webhookName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


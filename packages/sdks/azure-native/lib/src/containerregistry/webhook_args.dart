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
    required pulumi.Output<List<String>> actions,
    pulumi.Output<Map<String, String>>? customHeaders,
    pulumi.Output<String>? location,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? scope,
    required pulumi.Output<String> serviceUri,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? webhookName,
  }) :
      actions = pulumi.Input.asInput<List<String>>(actions),
      customHeaders = pulumi.Input.asOptionalInput<Map<String, String>>(customHeaders),
      location = pulumi.Input.asOptionalInput<String>(location),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      serviceUri = pulumi.Input.asInput<String>(serviceUri),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      webhookName = pulumi.Input.asOptionalInput<String>(webhookName);

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
      actions: pulumi.Output.create<List<String>>((map['actions'] as List).cast<String>()),
      customHeaders: map['customHeaders'] == null ? null : pulumi.Output.create<Map<String, String>>((map['customHeaders'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      serviceUri: pulumi.Output.create<String>(map['serviceUri'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      webhookName: map['webhookName'] == null ? null : pulumi.Output.create<String>(map['webhookName'] as String),
    );
  }
}


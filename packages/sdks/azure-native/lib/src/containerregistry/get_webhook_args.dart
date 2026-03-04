// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_webhook_args_doc}
/// Arguments for getWebhook.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_webhook_args_doc}
class GetWebhookArgs {
  /// The name of the container registry.
  final pulumi.Input<String> registryName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the webhook.
  final pulumi.Input<String> webhookName;

  /// Creates a new [GetWebhookArgs].
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [webhookName] The name of the webhook.
  GetWebhookArgs({
    required this.registryName,
    required this.resourceGroupName,
    required this.webhookName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'webhookName': webhookName,
    };
  }

  factory GetWebhookArgs.fromMap(Map<String, dynamic> map) {
    return GetWebhookArgs(
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      webhookName: pulumi.Input.fromValue(map['webhookName'] as String),
    );
  }
}

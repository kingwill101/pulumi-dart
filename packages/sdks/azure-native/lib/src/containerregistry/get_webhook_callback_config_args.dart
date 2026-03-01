// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_webhook_callback_config_args_doc}
/// Arguments for getWebhookCallbackConfig.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_webhook_callback_config_args_doc}
class GetWebhookCallbackConfigArgs {
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the webhook.
  final pulumi.Input<String> webhookName;

  /// Creates a new [GetWebhookCallbackConfigArgs].
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [webhookName] The name of the webhook.
  GetWebhookCallbackConfigArgs({
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> webhookName,
  }) :
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      webhookName = pulumi.Input.asInput<String>(webhookName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'webhookName': webhookName,
    };
  }

  factory GetWebhookCallbackConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetWebhookCallbackConfigArgs(
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      webhookName: pulumi.Output.create<String>(map['webhookName'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_webhook_args_doc}
/// Arguments for getWebhook.
/// {@endtemplate}
/// {@macro pulumi_automation_get_webhook_args_doc}
class GetWebhookArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The webhook name.
  final pulumi.Input<String> webhookName;

  /// Creates a new [GetWebhookArgs].
  /// [automationAccountName] The name of the automation account.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [webhookName] The webhook name.
  GetWebhookArgs({
    required String automationAccountName,
    required String resourceGroupName,
    required String webhookName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      webhookName = pulumi.Input.asInput<String>(webhookName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'resourceGroupName': resourceGroupName,
      'webhookName': webhookName,
    };
  }

  factory GetWebhookArgs.fromMap(Map<String, dynamic> map) {
    return GetWebhookArgs(
      automationAccountName: map['automationAccountName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      webhookName: map['webhookName'] as String,
    );
  }
}


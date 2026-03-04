// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_msc_sub_webhook_msc_sub_webhook_args_doc}
/// The set of arguments for MscSubWebhook.
/// {@endtemplate}
/// {@macro pulumi_index_msc_sub_webhook_msc_sub_webhook_args_doc}
class MscSubWebhookArgs {
  /// The serverUrl of the Webhook. This url must start with `https://oapi.dingtalk.com/robot/send?access_token=`.
  final pulumi.Input<String> serverUrl;

  /// The name of the Webhook. **Note:** The name must be `2` to `12` characters in length, and can contain uppercase and lowercase letters.
  final pulumi.Input<String> webhookName;

  /// Creates a new [MscSubWebhookArgs].
  /// [serverUrl] The serverUrl of the Webhook. This url must start with `https://oapi.dingtalk.com/robot/send?access_token=`.
  /// [webhookName] The name of the Webhook. **Note:** The name must be `2` to `12` characters in length, and can contain uppercase and lowercase letters.
  MscSubWebhookArgs({required this.serverUrl, required this.webhookName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverUrl': serverUrl,
      'webhookName': webhookName,
    };
  }

  factory MscSubWebhookArgs.fromMap(Map<String, dynamic> map) {
    return MscSubWebhookArgs(
      serverUrl: pulumi.Input.fromValue(map['serverUrl'] as String),
      webhookName: pulumi.Input.fromValue(map['webhookName'] as String),
    );
  }
}

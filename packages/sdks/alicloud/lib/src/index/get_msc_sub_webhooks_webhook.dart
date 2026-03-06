// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMscSubWebhooksWebhook {
  /// The ID of the Webhook.
  final pulumi.Input<String> id;
  /// The serverUrl of the Subscription.
  final pulumi.Input<String> serverUrl;
  /// The first ID of the resource.
  final pulumi.Input<String> webhookId;
  /// The name of the Webhook. **Note:** The name must be `2` to `12` characters in length, and can contain uppercase and lowercase letters.
  final pulumi.Input<String> webhookName;

  /// Creates a new [GetMscSubWebhooksWebhook].
  /// [id] The ID of the Webhook.
  /// [serverUrl] The serverUrl of the Subscription.
  /// [webhookId] The first ID of the resource.
  /// [webhookName] The name of the Webhook. **Note:** The name must be `2` to `12` characters in length, and can contain uppercase and lowercase letters.
  const GetMscSubWebhooksWebhook({
    required this.id,
    required this.serverUrl,
    required this.webhookId,
    required this.webhookName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'serverUrl': serverUrl,
      'webhookId': webhookId,
      'webhookName': webhookName,
    };
  }

  factory GetMscSubWebhooksWebhook.fromMap(Map<String, dynamic> map) {
    return GetMscSubWebhooksWebhook(
      id: pulumi.Input.fromValue(map['id'] as String),
      serverUrl: pulumi.Input.fromValue(map['serverUrl'] as String),
      webhookId: pulumi.Input.fromValue(map['webhookId'] as String),
      webhookName: pulumi.Input.fromValue(map['webhookName'] as String),
    );
  }
}


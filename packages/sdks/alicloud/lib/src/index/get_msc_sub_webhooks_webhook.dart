// ignore_for_file: unused_element, unnecessary_cast


class GetMscSubWebhooksWebhook {
  /// The ID of the Webhook.
  final String id;
  /// The serverUrl of the Subscription.
  final String serverUrl;
  /// The first ID of the resource.
  final String webhookId;
  /// The name of the Webhook. **Note:** The name must be `2` to `12` characters in length, and can contain uppercase and lowercase letters.
  final String webhookName;

  /// Creates a new [GetMscSubWebhooksWebhook].
  /// [id] The ID of the Webhook.
  /// [serverUrl] The serverUrl of the Subscription.
  /// [webhookId] The first ID of the resource.
  /// [webhookName] The name of the Webhook. **Note:** The name must be `2` to `12` characters in length, and can contain uppercase and lowercase letters.
  GetMscSubWebhooksWebhook({
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
      id: map['id'] as String,
      serverUrl: map['serverUrl'] as String,
      webhookId: map['webhookId'] as String,
      webhookName: map['webhookName'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MscSubWebhook resources.
class MscSubWebhookState {
  /// The serverUrl of the Webhook. This url must start with `https://oapi.dingtalk.com/robot/send?access_token=`.
  final pulumi.Input<String>? serverUrl;
  /// The name of the Webhook. **Note:** The name must be `2` to `12` characters in length, and can contain uppercase and lowercase letters.
  final pulumi.Input<String>? webhookName;

  /// Creates a new [MscSubWebhookState].
  /// [serverUrl] The serverUrl of the Webhook. This url must start with `https://oapi.dingtalk.com/robot/send?access_token=`.
  /// [webhookName] The name of the Webhook. **Note:** The name must be `2` to `12` characters in length, and can contain uppercase and lowercase letters.
  MscSubWebhookState({
    this.serverUrl,
    this.webhookName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverUrl': ?serverUrl,
      'webhookName': ?webhookName,
    };
  }

  factory MscSubWebhookState.fromMap(Map<String, dynamic> map) {
    return MscSubWebhookState(
      serverUrl: map['serverUrl'] == null ? null : (map['serverUrl'] as String).input(),
      webhookName: map['webhookName'] == null ? null : (map['webhookName'] as String).input(),
    );
  }
}


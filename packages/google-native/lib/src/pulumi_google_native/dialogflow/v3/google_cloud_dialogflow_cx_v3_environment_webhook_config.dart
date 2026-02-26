// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3_webhook.dart';

/// Configuration for webhooks.
class GoogleCloudDialogflowCxV3EnvironmentWebhookConfig {
  /// The list of webhooks to override for the agent environment. The webhook must exist in the agent. You can override fields in `generic_web_service` and `service_directory`.
  final List<GoogleCloudDialogflowCxV3Webhook>? webhookOverrides;

  GoogleCloudDialogflowCxV3EnvironmentWebhookConfig({
    this.webhookOverrides,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final webhookOverridesValue = webhookOverrides;
    if (webhookOverridesValue != null) {
      map['webhookOverrides'] = Input.encodeList<
              GoogleCloudDialogflowCxV3Webhook, Map<String, dynamic>>(
          webhookOverridesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3EnvironmentWebhookConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EnvironmentWebhookConfig(
      webhookOverrides: map['webhookOverrides'] == null
          ? null
          : Input.decodeList<GoogleCloudDialogflowCxV3Webhook>(
              map['webhookOverrides'],
              (value) => GoogleCloudDialogflowCxV3Webhook.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3beta1_webhook.dart';

/// Configuration for webhooks.
class GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig {
  /// The list of webhooks to override for the agent environment. The webhook must exist in the agent. You can override fields in `generic_web_service` and `service_directory`.
  final List<GoogleCloudDialogflowCxV3beta1Webhook>? webhookOverrides;

  GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig({
    this.webhookOverrides,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final webhookOverridesValue = webhookOverrides;
    if (webhookOverridesValue != null) {
      map['webhookOverrides'] = Input.encodeList<
              GoogleCloudDialogflowCxV3beta1Webhook, Map<String, dynamic>>(
          webhookOverridesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig(
      webhookOverrides: map['webhookOverrides'] == null
          ? null
          : Input.decodeList<GoogleCloudDialogflowCxV3beta1Webhook>(
              map['webhookOverrides'],
              (value) => GoogleCloudDialogflowCxV3beta1Webhook.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

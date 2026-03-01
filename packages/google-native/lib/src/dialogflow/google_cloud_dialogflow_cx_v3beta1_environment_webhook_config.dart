// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_webhook.dart';

/// Configuration for webhooks.
class GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig {
  /// The list of webhooks to override for the agent environment. The webhook must exist in the agent. You can override fields in `generic_web_service` and `service_directory`.
  final List<GoogleCloudDialogflowCxV3beta1Webhook>? webhookOverrides;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig].
  /// [webhookOverrides] The list of webhooks to override for the agent environment. The webhook must exist in the agent. You can override fields in `generic_web_service` and `service_directory`.
  GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig({
    this.webhookOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webhookOverrides': ?webhookOverrides == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3beta1Webhook,
              Map<String, dynamic>
            >(webhookOverrides!, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig(
      webhookOverrides: map['webhookOverrides'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1Webhook>(
              map['webhookOverrides'],
              (value) => GoogleCloudDialogflowCxV3beta1Webhook.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}

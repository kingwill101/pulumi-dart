// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_webhook_response.dart';

/// Configuration for webhooks.
class GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfigResponse {
  /// The list of webhooks to override for the agent environment. The webhook must exist in the agent. You can override fields in `generic_web_service` and `service_directory`.
  final List<GoogleCloudDialogflowCxV3beta1WebhookResponse> webhookOverrides;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfigResponse].
  /// [webhookOverrides] The list of webhooks to override for the agent environment. The webhook must exist in the agent. You can override fields in `generic_web_service` and `service_directory`.
  GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfigResponse({
    required this.webhookOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'webhookOverrides':
          pulumi.Input.encodeList<
            GoogleCloudDialogflowCxV3beta1WebhookResponse,
            Map<String, dynamic>
          >(webhookOverrides, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfigResponse(
      webhookOverrides:
          pulumi
              .Input.decodeList<GoogleCloudDialogflowCxV3beta1WebhookResponse>(
            map['webhookOverrides'],
            (value) => GoogleCloudDialogflowCxV3beta1WebhookResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}

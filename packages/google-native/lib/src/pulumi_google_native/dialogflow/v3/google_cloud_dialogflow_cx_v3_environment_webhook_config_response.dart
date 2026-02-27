// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3_webhook_response.dart';

/// Configuration for webhooks.
class GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse {
  /// The list of webhooks to override for the agent environment. The webhook must exist in the agent. You can override fields in `generic_web_service` and `service_directory`.
  final List<GoogleCloudDialogflowCxV3WebhookResponse> webhookOverrides;

  GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse({
    required this.webhookOverrides,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['webhookOverrides'] = Input.encodeList<
        GoogleCloudDialogflowCxV3WebhookResponse,
        Map<String, dynamic>>(webhookOverrides, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EnvironmentWebhookConfigResponse(
      webhookOverrides:
          Input.decodeList<GoogleCloudDialogflowCxV3WebhookResponse>(
              map['webhookOverrides'],
              (value) => GoogleCloudDialogflowCxV3WebhookResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

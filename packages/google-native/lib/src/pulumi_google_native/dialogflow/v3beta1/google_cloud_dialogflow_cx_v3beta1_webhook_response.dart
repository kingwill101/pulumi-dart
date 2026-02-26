// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3beta1_webhook_generic_web_service_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_webhook_service_directory_config_response.dart';

/// Webhooks host the developer's business logic. During a session, webhooks allow the developer to use the data extracted by Dialogflow's natural language processing to generate dynamic responses, validate collected data, or trigger actions on the backend.
class GoogleCloudDialogflowCxV3beta1WebhookResponse {
  /// Indicates whether the webhook is disabled.
  final bool disabled;

  /// The human-readable name of the webhook, unique within the agent.
  final String displayName;

  /// Configuration for a generic web service.
  final GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceResponse
      genericWebService;

  /// The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  final String name;

  /// Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  final GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfigResponse
      serviceDirectory;

  /// Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  final String timeout;

  GoogleCloudDialogflowCxV3beta1WebhookResponse({
    required this.disabled,
    required this.displayName,
    required this.genericWebService,
    required this.name,
    required this.serviceDirectory,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    map['displayName'] = displayName;
    map['genericWebService'] = genericWebService.toMap();
    map['name'] = name;
    map['serviceDirectory'] = serviceDirectory.toMap();
    map['timeout'] = timeout;
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1WebhookResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1WebhookResponse(
      disabled: map['disabled'] as bool,
      displayName: map['displayName'] as String,
      genericWebService:
          GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceResponse
              .fromMap(
                  (map['genericWebService'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      serviceDirectory:
          GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfigResponse
              .fromMap(
                  (map['serviceDirectory'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] as String,
    );
  }
}

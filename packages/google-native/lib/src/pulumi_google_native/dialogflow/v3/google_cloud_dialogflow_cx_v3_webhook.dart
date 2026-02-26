// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_cx_v3_webhook_generic_web_service.dart';
import 'google_cloud_dialogflow_cx_v3_webhook_service_directory_config.dart';

/// Webhooks host the developer's business logic. During a session, webhooks allow the developer to use the data extracted by Dialogflow's natural language processing to generate dynamic responses, validate collected data, or trigger actions on the backend.
class GoogleCloudDialogflowCxV3Webhook {
  /// Indicates whether the webhook is disabled.
  final bool? disabled;

  /// The human-readable name of the webhook, unique within the agent.
  final String displayName;

  /// Configuration for a generic web service.
  final GoogleCloudDialogflowCxV3WebhookGenericWebService? genericWebService;

  /// The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  final String? name;

  /// Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  final GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig?
      serviceDirectory;

  /// Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  final String? timeout;

  GoogleCloudDialogflowCxV3Webhook({
    this.disabled,
    required this.displayName,
    this.genericWebService,
    this.name,
    this.serviceDirectory,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['displayName'] = displayName;
    final genericWebServiceValue = genericWebService;
    if (genericWebServiceValue != null) {
      map['genericWebService'] = genericWebServiceValue.toMap();
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final serviceDirectoryValue = serviceDirectory;
    if (serviceDirectoryValue != null) {
      map['serviceDirectory'] = serviceDirectoryValue.toMap();
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3Webhook.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3Webhook(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      displayName: map['displayName'] as String,
      genericWebService: map['genericWebService'] == null
          ? null
          : GoogleCloudDialogflowCxV3WebhookGenericWebService.fromMap(
              (map['genericWebService'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      serviceDirectory: map['serviceDirectory'] == null
          ? null
          : GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig.fromMap(
              (map['serviceDirectory'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

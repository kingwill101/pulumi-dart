// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3beta1_webhook_generic_web_service.dart';
import 'google_cloud_dialogflow_cx_v3beta1_webhook_service_directory_config.dart';

/// The set of arguments for Webhook.
class WebhookArgs2 {
  final Input<String> agentId;

  /// Indicates whether the webhook is disabled.
  final Input<bool>? disabled;

  /// The human-readable name of the webhook, unique within the agent.
  final Input<String> displayName;

  /// Configuration for a generic web service.
  final Input<GoogleCloudDialogflowCxV3beta1WebhookGenericWebService>?
      genericWebService;
  final Input<String>? location;

  /// The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  final Input<String>? name;
  final Input<String>? project;

  /// Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  final Input<GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig>?
      serviceDirectory;

  /// Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  final Input<String>? timeout;

  WebhookArgs2({
    required this.agentId,
    this.disabled,
    required this.displayName,
    this.genericWebService,
    this.location,
    this.name,
    this.project,
    this.serviceDirectory,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    map['displayName'] = displayName;
    final genericWebServiceValue = genericWebService;
    if (genericWebServiceValue != null) {
      map['genericWebService'] = Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3beta1WebhookGenericWebService,
              Map<String, dynamic>>(
          genericWebServiceValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serviceDirectoryValue = serviceDirectory;
    if (serviceDirectoryValue != null) {
      map['serviceDirectory'] = Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig,
              Map<String, dynamic>>(
          serviceDirectoryValue, (value) => value.toMap());
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    return map;
  }

  factory WebhookArgs2.fromMap(Map<String, dynamic> map) {
    return WebhookArgs2(
      agentId: Input.asInput<String>(map['agentId']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      displayName: Input.asInput<String>(map['displayName']),
      genericWebService: Input.asOptionalInput<
              GoogleCloudDialogflowCxV3beta1WebhookGenericWebService>(
          map['genericWebService']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceDirectory: Input.asOptionalInput<
              GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig>(
          map['serviceDirectory']),
      timeout: Input.asOptionalInput<String>(map['timeout']),
    );
  }
}

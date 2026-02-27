// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_webhook_generic_web_service.dart';
import 'google_cloud_dialogflow_cx_v3beta1_webhook_service_directory_config.dart';

/// The set of arguments for Webhook.
class WebhookDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;

  /// Indicates whether the webhook is disabled.
  final pulumi.Input<bool>? disabled;

  /// The human-readable name of the webhook, unique within the agent.
  final pulumi.Input<String> displayName;

  /// Configuration for a generic web service.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1WebhookGenericWebService>?
      genericWebService;
  final pulumi.Input<String>? location;

  /// The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  final pulumi
      .Input<GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig>?
      serviceDirectory;

  /// Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  final pulumi.Input<String>? timeout;

  WebhookDialogflowV3beta1Args({
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
      map['genericWebService'] = pulumi.Input.mapOptionalInputValue<
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
      map['serviceDirectory'] = pulumi.Input.mapOptionalInputValue<
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

  factory WebhookDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return WebhookDialogflowV3beta1Args(
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      genericWebService: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowCxV3beta1WebhookGenericWebService>(
          map['genericWebService']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceDirectory: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig>(
          map['serviceDirectory']),
      timeout: pulumi.Input.asOptionalInput<String>(map['timeout']),
    );
  }
}

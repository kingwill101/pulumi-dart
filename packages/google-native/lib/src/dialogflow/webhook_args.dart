// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_webhook_generic_web_service.dart';
import 'google_cloud_dialogflow_cx_v3_webhook_service_directory_config.dart';

/// {@template pulumi_dialogflow_v3_webhook_args_doc}
/// The set of arguments for Webhook.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_webhook_args_doc}
class WebhookArgs {
  final pulumi.Input<String> agentId;
  /// Indicates whether the webhook is disabled.
  final pulumi.Input<bool>? disabled;
  /// The human-readable name of the webhook, unique within the agent.
  final pulumi.Input<String> displayName;
  /// Configuration for a generic web service.
  final pulumi.Input<GoogleCloudDialogflowCxV3WebhookGenericWebService>? genericWebService;
  final pulumi.Input<String>? location;
  /// The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  final pulumi.Input<GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig>? serviceDirectory;
  /// Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  final pulumi.Input<String>? timeout;

  /// Creates a new [WebhookArgs].
  /// [agentId] Required.
  /// [disabled] Indicates whether the webhook is disabled.
  /// [displayName] The human-readable name of the webhook, unique within the agent.
  /// [genericWebService] Configuration for a generic web service.
  /// [location] Optional.
  /// [name] The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  /// [project] Optional.
  /// [serviceDirectory] Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  /// [timeout] Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  WebhookArgs({
    required String agentId,
    bool? disabled,
    required String displayName,
    GoogleCloudDialogflowCxV3WebhookGenericWebService? genericWebService,
    String? location,
    String? name,
    String? project,
    GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig? serviceDirectory,
    String? timeout,
  }) :
      agentId = pulumi.Input.asInput<String>(agentId),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      displayName = pulumi.Input.asInput<String>(displayName),
      genericWebService = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3WebhookGenericWebService>(genericWebService),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceDirectory = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig>(serviceDirectory),
      timeout = pulumi.Input.asOptionalInput<String>(timeout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'disabled': ?disabled,
      'displayName': displayName,
      'genericWebService': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3WebhookGenericWebService, Map<String, dynamic>>(genericWebService, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serviceDirectory': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig, Map<String, dynamic>>(serviceDirectory, (value) => value.toMap()),
      'timeout': ?timeout,
    };
  }

  factory WebhookArgs.fromMap(Map<String, dynamic> map) {
    return WebhookArgs(
      agentId: map['agentId'] as String,
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      displayName: map['displayName'] as String,
      genericWebService: map['genericWebService'] == null ? null : GoogleCloudDialogflowCxV3WebhookGenericWebService.fromMap((map['genericWebService'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceDirectory: map['serviceDirectory'] == null ? null : GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig.fromMap((map['serviceDirectory'] as Map).cast<String, dynamic>()),
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}


import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3_webhook_generic_web_service_response.dart';
import 'google_cloud_dialogflow_cx_v3_webhook_service_directory_config_response.dart';
import 'webhook_args.dart';

/// Creates a webhook in the specified agent.
class Webhook extends CustomResource {
  late final Output<String> agentId;

  /// Indicates whether the webhook is disabled.
  late final Output<bool> disabled;

  /// The human-readable name of the webhook, unique within the agent.
  late final Output<String> displayName;

  /// Configuration for a generic web service.
  late final Output<GoogleCloudDialogflowCxV3WebhookGenericWebServiceResponse>
      genericWebService;
  late final Output<String> location;

  /// The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook method. Webhooks.CreateWebhook populates the name automatically. Format: `projects//locations//agents//webhooks/`.
  late final Output<String> name;
  late final Output<String> project;

  /// Configuration for a [Service Directory](https://cloud.google.com/service-directory) service.
  late final Output<
          GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfigResponse>
      serviceDirectory;

  /// Webhook execution timeout. Execution is considered failed if Dialogflow doesn't receive a response from webhook at the end of the timeout period. Defaults to 5 seconds, maximum allowed timeout is 30 seconds.
  late final Output<String> timeout;

  Webhook(
    String name, {
    WebhookArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3:Webhook',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentId = registerOutput<String>('agentId');
    this.disabled = registerOutput<bool>('disabled');
    this.displayName = registerOutput<String>('displayName');
    this.genericWebService = registerOutput<
            GoogleCloudDialogflowCxV3WebhookGenericWebServiceResponse>(
        'genericWebService');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serviceDirectory = registerOutput<
            GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfigResponse>(
        'serviceDirectory');
    this.timeout = registerOutput<String>('timeout');
  }
}

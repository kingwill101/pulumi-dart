import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_webhook_generic_web_service/cx_webhook_generic_web_service.dart';
import '../cx_webhook_service_directory/cx_webhook_service_directory.dart';
import 'cx_webhook_args.dart';

/// Webhooks host the developer's business logic. During a session, webhooks allow the developer to use the data extracted by Dialogflow's natural language processing to generate dynamic responses, validate collected data, or trigger actions on the backend.
///
///
/// To get more information about Webhook, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.webhooks)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Webhook Standard
///
///
///
/// ### Dialogflowcx Webhook Flexible
///
///
///
/// ### Dialogflowcx Webhook Service Directory Standard
///
///
///
/// ### Dialogflowcx Webhook Service Directory Flexible
///
///
///
/// ### Dialogflowcx Webhook With Service Account Auth
///
///
///
/// ### Dialogflowcx Webhook Service Directory With Service Account Auth
///
///
///
///
/// ## Import
///
/// Webhook can be imported using any of these accepted formats:
///
/// * `{{parent}}/webhooks/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Webhook can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxWebhook:CxWebhook default {{parent}}/webhooks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxWebhook:CxWebhook default {{parent}}/{{name}}
/// ```
class CxWebhook extends pulumi.CustomResource {
  /// Indicates whether the webhook is disabled.
  late final pulumi.Output<bool?> disabled;

  /// The human-readable name of the webhook, unique within the agent.
  late final pulumi.Output<String> displayName;

  /// Deprecated. Indicates if automatic spell correction is enabled in detect intent requests.
  late final pulumi.Output<bool?> enableSpellCorrection;

  /// Deprecated. Determines whether this agent should log conversation queries.
  late final pulumi.Output<bool?> enableStackdriverLogging;

  /// Represents configuration for a generic web service.
  /// Structure is documented below.
  late final pulumi.Output<CxWebhookGenericWebService?> genericWebService;

  /// The unique identifier of the webhook.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/webhooks/<Webhook ID>.
  late final pulumi.Output<String> name;

  /// The agent to create a webhook for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final pulumi.Output<String?> parent;

  /// Deprecated. Name of the SecuritySettings reference for the agent. Format: projects/<Project ID>/locations/<Location ID>/securitySettings/<Security Settings ID>.
  late final pulumi.Output<String?> securitySettings;

  /// Configuration for a Service Directory service.
  /// Structure is documented below.
  late final pulumi.Output<CxWebhookServiceDirectory?> serviceDirectory;

  /// Deprecated. Name of the start flow in this agent. A start flow will be automatically created when the agent is created, and can only be deleted by deleting the agent. Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  late final pulumi.Output<String> startFlow;

  /// Webhook execution timeout.
  late final pulumi.Output<String?> timeout;

  CxWebhook(
    String name, {
    CxWebhookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxWebhook:CxWebhook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.disabled = registerOutput<bool?>('disabled');
    this.displayName = registerOutput<String>('displayName');
    this.enableSpellCorrection = registerOutput<bool?>('enableSpellCorrection');
    this.enableStackdriverLogging =
        registerOutput<bool?>('enableStackdriverLogging');
    this.genericWebService =
        registerOutput<CxWebhookGenericWebService?>('genericWebService');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.securitySettings = registerOutput<String?>('securitySettings');
    this.serviceDirectory =
        registerOutput<CxWebhookServiceDirectory?>('serviceDirectory');
    this.startFlow = registerOutput<String>('startFlow');
    this.timeout = registerOutput<String?>('timeout');
  }
}

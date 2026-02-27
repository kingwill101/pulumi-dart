import 'package:pulumi/pulumi.dart' as pulumi;
import '../intent_followup_intent_info/intent_followup_intent_info.dart';
import 'intent_args.dart';

/// Represents a Dialogflow intent. Intents convert a number of user expressions or patterns into an action. An action
/// is an extraction of a user command or sentence semantics.
///
///
/// To get more information about Intent, see:
///
/// * [API documentation](https://docs.cloud.google.com/dialogflow/es/docs/reference/rest/v2/projects.agent.intents)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/docs/)
///
/// ## Example Usage
///
/// ### Dialogflow Intent Basic
///
///
///
/// ### Dialogflow Intent Full
///
///
///
///
/// ## Import
///
/// Intent can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Intent can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/intent:Intent default {{name}}
/// ```
class Intent extends pulumi.CustomResource {
  /// The name of the action associated with the intent.
  /// Note: The action name must not contain whitespaces.
  late final pulumi.Output<String> action;

  /// The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED
  /// (i.e. default platform).
  /// Each value may be one of: `FACEBOOK`, `SLACK`, `TELEGRAM`, `KIK`, `SKYPE`, `LINE`, `VIBER`, `ACTIONS_ON_GOOGLE`, `GOOGLE_HANGOUTS`.
  late final pulumi.Output<List<String>?> defaultResponsePlatforms;

  /// The name of this intent to be displayed on the console.
  late final pulumi.Output<String> displayName;

  /// The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of
  /// the contexts must be present in the active user session for an event to trigger this intent. See the
  /// [events reference](https://cloud.google.com/dialogflow/docs/events-overview) for more details.
  late final pulumi.Output<List<String>?> events;

  /// Information about all followup intents that have this intent as a direct or indirect parent. We populate this field
  /// only in the output.
  /// Structure is documented below.
  late final pulumi.Output<List<IntentFollowupIntentInfo>> followupIntentInfos;

  /// The list of context names required for this intent to be triggered.
  /// Format: projects/<Project ID>/agent/sessions/-/contexts/<Context ID>.
  late final pulumi.Output<List<String>?> inputContextNames;

  /// Indicates whether this is a fallback intent.
  late final pulumi.Output<bool> isFallback;

  /// Indicates whether Machine Learning is disabled for the intent.
  /// Note: If mlDisabled setting is set to true, then this intent is not taken into account during inference in ML
  /// ONLY match mode. Also, auto-markup in the UI is turned off.
  late final pulumi.Output<bool> mlDisabled;

  /// The unique identifier of this intent.
  /// Format: projects/<Project ID>/agent/intents/<Intent ID>.
  late final pulumi.Output<String> name;

  /// The unique identifier of the parent intent in the chain of followup intents.
  /// Format: projects/<Project ID>/agent/intents/<Intent ID>.
  late final pulumi.Output<String> parentFollowupIntentName;

  /// The priority of this intent. Higher numbers represent higher priorities.
  /// - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds
  /// to the Normal priority in the console.
  /// - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  late final pulumi.Output<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Indicates whether to delete all contexts in the current session when this intent is matched.
  late final pulumi.Output<bool> resetContexts;

  /// The unique identifier of the root intent in the chain of followup intents. It identifies the correct followup
  /// intents chain for this intent.
  /// Format: projects/<Project ID>/agent/intents/<Intent ID>.
  late final pulumi.Output<String> rootFollowupIntentName;

  /// Indicates whether webhooks are enabled for the intent.
  /// * WEBHOOK_STATE_ENABLED: Webhook is enabled in the agent and in the intent.
  /// * WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING: Webhook is enabled in the agent and in the intent. Also, each slot
  /// filling prompt is forwarded to the webhook.
  /// Possible values are: `WEBHOOK_STATE_ENABLED`, `WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING`.
  late final pulumi.Output<String> webhookState;

  Intent(
    String name, {
    IntentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/intent:Intent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.defaultResponsePlatforms =
        registerOutput<List<String>?>('defaultResponsePlatforms');
    this.displayName = registerOutput<String>('displayName');
    this.events = registerOutput<List<String>?>('events');
    this.followupIntentInfos =
        registerOutput<List<IntentFollowupIntentInfo>>('followupIntentInfos');
    this.inputContextNames = registerOutput<List<String>?>('inputContextNames');
    this.isFallback = registerOutput<bool>('isFallback');
    this.mlDisabled = registerOutput<bool>('mlDisabled');
    this.name = registerOutput<String>('name');
    this.parentFollowupIntentName =
        registerOutput<String>('parentFollowupIntentName');
    this.priority = registerOutput<int>('priority');
    this.project = registerOutput<String>('project');
    this.resetContexts = registerOutput<bool>('resetContexts');
    this.rootFollowupIntentName =
        registerOutput<String>('rootFollowupIntentName');
    this.webhookState = registerOutput<String>('webhookState');
  }
}

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_v2beta1_context_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_followup_intent_info_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_parameter_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_training_phrase_response.dart';
import 'intent_args2.dart';

/// Creates an intent in the specified agent. Note: You should always train an agent prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/es/docs/training).
/// Auto-naming is currently not supported for this resource.
class Intent2 extends CustomResource {
  /// Optional. The name of the action associated with the intent. Note: The action name must not contain whitespaces.
  late final Output<String> action;

  /// Optional. The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
  late final Output<List<String>> defaultResponsePlatforms;

  /// The name of this intent.
  late final Output<String> displayName;

  /// Optional. Indicates that this intent ends an interaction. Some integrations (e.g., Actions on Google or Dialogflow phone gateway) use this information to close interaction with an end user. Default is false.
  late final Output<bool> endInteraction;

  /// Optional. The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of the contexts must be present in the active user session for an event to trigger this intent. Event names are limited to 150 characters.
  late final Output<List<String>> events;

  /// Information about all followup intents that have this intent as a direct or indirect parent. We populate this field only in the output.
  late final Output<
          List<GoogleCloudDialogflowV2beta1IntentFollowupIntentInfoResponse>>
      followupIntentInfo;

  /// Optional. The list of context names required for this intent to be triggered. Formats: - `projects//agent/sessions/-/contexts/` - `projects//locations//agent/sessions/-/contexts/`
  late final Output<List<String>> inputContextNames;

  /// Optional. The resource view to apply to the returned intent.
  late final Output<String?> intentView;

  /// Optional. Indicates whether this is a fallback intent.
  late final Output<bool> isFallback;

  /// Optional. The language used to access language-specific data. If not specified, the agent's default language is used. For more information, see [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  late final Output<String?> languageCode;

  /// Optional. Indicates that a live agent should be brought in to handle the interaction with the user. In most cases, when you set this flag to true, you would also want to set end_interaction to true as well. Default is false.
  late final Output<bool> liveAgentHandoff;
  late final Output<String> location;

  /// Optional. The collection of rich messages corresponding to the `Response` field in the Dialogflow console.
  late final Output<List<GoogleCloudDialogflowV2beta1IntentMessageResponse>>
      messages;

  /// Optional. Indicates whether Machine Learning is disabled for the intent. Note: If `ml_disabled` setting is set to true, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off.
  late final Output<bool> mlDisabled;

  /// Optional. Indicates whether Machine Learning is enabled for the intent. Note: If `ml_enabled` setting is set to false, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off. DEPRECATED! Please use `ml_disabled` field instead. NOTE: If both `ml_enabled` and `ml_disabled` are either not set or false, then the default value is determined as follows: - Before April 15th, 2018 the default is: ml_enabled = false / ml_disabled = true. - After April 15th, 2018 the default is: ml_enabled = true / ml_disabled = false.
  late final Output<bool> mlEnabled;

  /// Optional. The unique identifier of this intent. Required for Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Supported formats: - `projects//agent/intents/` - `projects//locations//agent/intents/`
  late final Output<String> name;

  /// Optional. The collection of contexts that are activated when the intent is matched. Context messages in this collection should not set the parameters field. Setting the `lifespan_count` to 0 will reset the context when the intent is matched. Format: `projects//agent/sessions/-/contexts/`.
  late final Output<List<GoogleCloudDialogflowV2beta1ContextResponse>>
      outputContexts;

  /// Optional. The collection of parameters associated with the intent.
  late final Output<List<GoogleCloudDialogflowV2beta1IntentParameterResponse>>
      parameters;

  /// Optional. The unique identifier of the parent intent in the chain of followup intents. You can set this field when creating an intent, for example with CreateIntent or BatchUpdateIntents, in order to make this intent a followup intent. It identifies the parent followup intent. Format: `projects//agent/intents/`.
  late final Output<String> parentFollowupIntentName;

  /// Optional. The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  late final Output<int> priority;
  late final Output<String> project;

  /// Optional. Indicates whether to delete all contexts in the current session when this intent is matched.
  late final Output<bool> resetContexts;

  /// The unique identifier of the root intent in the chain of followup intents. It identifies the correct followup intents chain for this intent. Format: `projects//agent/intents/`.
  late final Output<String> rootFollowupIntentName;

  /// Optional. The collection of examples that the agent is trained on.
  late final Output<
          List<GoogleCloudDialogflowV2beta1IntentTrainingPhraseResponse>>
      trainingPhrases;

  /// Optional. Indicates whether webhooks are enabled for the intent.
  late final Output<String> webhookState;

  Intent2(
    String name, {
    IntentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v2beta1:Intent',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = Output.createUnknown<String>();
    this.defaultResponsePlatforms = Output.createUnknown<List<String>>();
    this.displayName = Output.createUnknown<String>();
    this.endInteraction = Output.createUnknown<bool>();
    this.events = Output.createUnknown<List<String>>();
    this.followupIntentInfo = Output.createUnknown<
        List<GoogleCloudDialogflowV2beta1IntentFollowupIntentInfoResponse>>();
    this.inputContextNames = Output.createUnknown<List<String>>();
    this.intentView = Output.createUnknown<String?>();
    this.isFallback = Output.createUnknown<bool>();
    this.languageCode = Output.createUnknown<String?>();
    this.liveAgentHandoff = Output.createUnknown<bool>();
    this.location = Output.createUnknown<String>();
    this.messages = Output.createUnknown<
        List<GoogleCloudDialogflowV2beta1IntentMessageResponse>>();
    this.mlDisabled = Output.createUnknown<bool>();
    this.mlEnabled = Output.createUnknown<bool>();
    this.name = Output.createUnknown<String>();
    this.outputContexts = Output.createUnknown<
        List<GoogleCloudDialogflowV2beta1ContextResponse>>();
    this.parameters = Output.createUnknown<
        List<GoogleCloudDialogflowV2beta1IntentParameterResponse>>();
    this.parentFollowupIntentName = Output.createUnknown<String>();
    this.priority = Output.createUnknown<int>();
    this.project = Output.createUnknown<String>();
    this.resetContexts = Output.createUnknown<bool>();
    this.rootFollowupIntentName = Output.createUnknown<String>();
    this.trainingPhrases = Output.createUnknown<
        List<GoogleCloudDialogflowV2beta1IntentTrainingPhraseResponse>>();
    this.webhookState = Output.createUnknown<String>();
  }
}

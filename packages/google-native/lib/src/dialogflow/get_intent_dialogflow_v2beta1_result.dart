// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2beta1_context_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_followup_intent_info_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_message_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_parameter_response.dart';
import 'google_cloud_dialogflow_v2beta1_intent_training_phrase_response.dart';

/// Result data returned by getIntent.
class GetIntentDialogflowV2beta1Result {
  /// Optional. The name of the action associated with the intent. Note: The action name must not contain whitespaces.
  final String action;

  /// Optional. The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
  final List<String> defaultResponsePlatforms;

  /// The name of this intent.
  final String displayName;

  /// Optional. Indicates that this intent ends an interaction. Some integrations (e.g., Actions on Google or Dialogflow phone gateway) use this information to close interaction with an end user. Default is false.
  final bool endInteraction;

  /// Optional. The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of the contexts must be present in the active user session for an event to trigger this intent. Event names are limited to 150 characters.
  final List<String> events;

  /// Information about all followup intents that have this intent as a direct or indirect parent. We populate this field only in the output.
  final List<GoogleCloudDialogflowV2beta1IntentFollowupIntentInfoResponse>
      followupIntentInfo;

  /// Optional. The list of context names required for this intent to be triggered. Formats: - `projects//agent/sessions/-/contexts/` - `projects//locations//agent/sessions/-/contexts/`
  final List<String> inputContextNames;

  /// Optional. Indicates whether this is a fallback intent.
  final bool isFallback;

  /// Optional. Indicates that a live agent should be brought in to handle the interaction with the user. In most cases, when you set this flag to true, you would also want to set end_interaction to true as well. Default is false.
  final bool liveAgentHandoff;

  /// Optional. The collection of rich messages corresponding to the `Response` field in the Dialogflow console.
  final List<GoogleCloudDialogflowV2beta1IntentMessageResponse> messages;

  /// Optional. Indicates whether Machine Learning is disabled for the intent. Note: If `ml_disabled` setting is set to true, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off.
  final bool mlDisabled;

  /// Optional. Indicates whether Machine Learning is enabled for the intent. Note: If `ml_enabled` setting is set to false, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off. DEPRECATED! Please use `ml_disabled` field instead. NOTE: If both `ml_enabled` and `ml_disabled` are either not set or false, then the default value is determined as follows: - Before April 15th, 2018 the default is: ml_enabled = false / ml_disabled = true. - After April 15th, 2018 the default is: ml_enabled = true / ml_disabled = false.
  final bool mlEnabled;

  /// Optional. The unique identifier of this intent. Required for Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Supported formats: - `projects//agent/intents/` - `projects//locations//agent/intents/`
  final String name;

  /// Optional. The collection of contexts that are activated when the intent is matched. Context messages in this collection should not set the parameters field. Setting the `lifespan_count` to 0 will reset the context when the intent is matched. Format: `projects//agent/sessions/-/contexts/`.
  final List<GoogleCloudDialogflowV2beta1ContextResponse> outputContexts;

  /// Optional. The collection of parameters associated with the intent.
  final List<GoogleCloudDialogflowV2beta1IntentParameterResponse> parameters;

  /// Optional. The unique identifier of the parent intent in the chain of followup intents. You can set this field when creating an intent, for example with CreateIntent or BatchUpdateIntents, in order to make this intent a followup intent. It identifies the parent followup intent. Format: `projects//agent/intents/`.
  final String parentFollowupIntentName;

  /// Optional. The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final int priority;

  /// Optional. Indicates whether to delete all contexts in the current session when this intent is matched.
  final bool resetContexts;

  /// The unique identifier of the root intent in the chain of followup intents. It identifies the correct followup intents chain for this intent. Format: `projects//agent/intents/`.
  final String rootFollowupIntentName;

  /// Optional. The collection of examples that the agent is trained on.
  final List<GoogleCloudDialogflowV2beta1IntentTrainingPhraseResponse>
      trainingPhrases;

  /// Optional. Indicates whether webhooks are enabled for the intent.
  final String webhookState;

  /// Creates a new [GetIntentDialogflowV2beta1Result].
  /// [action] Optional. The name of the action associated with the intent. Note: The action name must not contain whitespaces.
  /// [defaultResponsePlatforms] Optional. The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
  /// [displayName] The name of this intent.
  /// [endInteraction] Optional. Indicates that this intent ends an interaction. Some integrations (e.g., Actions on Google or Dialogflow phone gateway) use this information to close interaction with an end user. Default is false.
  /// [events] Optional. The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of the contexts must be present in the active user session for an event to trigger this intent. Event names are limited to 150 characters.
  /// [followupIntentInfo] Information about all followup intents that have this intent as a direct or indirect parent. We populate this field only in the output.
  /// [inputContextNames] Optional. The list of context names required for this intent to be triggered. Formats: - `projects//agent/sessions/-/contexts/` - `projects//locations//agent/sessions/-/contexts/`
  /// [isFallback] Optional. Indicates whether this is a fallback intent.
  /// [liveAgentHandoff] Optional. Indicates that a live agent should be brought in to handle the interaction with the user. In most cases, when you set this flag to true, you would also want to set end_interaction to true as well. Default is false.
  /// [messages] Optional. The collection of rich messages corresponding to the `Response` field in the Dialogflow console.
  /// [mlDisabled] Optional. Indicates whether Machine Learning is disabled for the intent. Note: If `ml_disabled` setting is set to true, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off.
  /// [mlEnabled] Optional. Indicates whether Machine Learning is enabled for the intent. Note: If `ml_enabled` setting is set to false, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off. DEPRECATED! Please use `ml_disabled` field instead. NOTE: If both `ml_enabled` and `ml_disabled` are either not set or false, then the default value is determined as follows: - Before April 15th, 2018 the default is: ml_enabled = false / ml_disabled = true. - After April 15th, 2018 the default is: ml_enabled = true / ml_disabled = false.
  /// [name] Optional. The unique identifier of this intent. Required for Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Supported formats: - `projects//agent/intents/` - `projects//locations//agent/intents/`
  /// [outputContexts] Optional. The collection of contexts that are activated when the intent is matched. Context messages in this collection should not set the parameters field. Setting the `lifespan_count` to 0 will reset the context when the intent is matched. Format: `projects//agent/sessions/-/contexts/`.
  /// [parameters] Optional. The collection of parameters associated with the intent.
  /// [parentFollowupIntentName] Optional. The unique identifier of the parent intent in the chain of followup intents. You can set this field when creating an intent, for example with CreateIntent or BatchUpdateIntents, in order to make this intent a followup intent. It identifies the parent followup intent. Format: `projects//agent/intents/`.
  /// [priority] Optional. The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  /// [resetContexts] Optional. Indicates whether to delete all contexts in the current session when this intent is matched.
  /// [rootFollowupIntentName] The unique identifier of the root intent in the chain of followup intents. It identifies the correct followup intents chain for this intent. Format: `projects//agent/intents/`.
  /// [trainingPhrases] Optional. The collection of examples that the agent is trained on.
  /// [webhookState] Optional. Indicates whether webhooks are enabled for the intent.
  GetIntentDialogflowV2beta1Result({
    required this.action,
    required this.defaultResponsePlatforms,
    required this.displayName,
    required this.endInteraction,
    required this.events,
    required this.followupIntentInfo,
    required this.inputContextNames,
    required this.isFallback,
    required this.liveAgentHandoff,
    required this.messages,
    required this.mlDisabled,
    required this.mlEnabled,
    required this.name,
    required this.outputContexts,
    required this.parameters,
    required this.parentFollowupIntentName,
    required this.priority,
    required this.resetContexts,
    required this.rootFollowupIntentName,
    required this.trainingPhrases,
    required this.webhookState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['defaultResponsePlatforms'] = defaultResponsePlatforms;
    map['displayName'] = displayName;
    map['endInteraction'] = endInteraction;
    map['events'] = events;
    map['followupIntentInfo'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentFollowupIntentInfoResponse,
        Map<String, dynamic>>(followupIntentInfo, (value) => value.toMap());
    map['inputContextNames'] = inputContextNames;
    map['isFallback'] = isFallback;
    map['liveAgentHandoff'] = liveAgentHandoff;
    map['messages'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentMessageResponse,
        Map<String, dynamic>>(messages, (value) => value.toMap());
    map['mlDisabled'] = mlDisabled;
    map['mlEnabled'] = mlEnabled;
    map['name'] = name;
    map['outputContexts'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2beta1ContextResponse,
        Map<String, dynamic>>(outputContexts, (value) => value.toMap());
    map['parameters'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentParameterResponse,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    map['parentFollowupIntentName'] = parentFollowupIntentName;
    map['priority'] = priority;
    map['resetContexts'] = resetContexts;
    map['rootFollowupIntentName'] = rootFollowupIntentName;
    map['trainingPhrases'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2beta1IntentTrainingPhraseResponse,
        Map<String, dynamic>>(trainingPhrases, (value) => value.toMap());
    map['webhookState'] = webhookState;
    return map;
  }

  factory GetIntentDialogflowV2beta1Result.fromMap(Map<String, dynamic> map) {
    return GetIntentDialogflowV2beta1Result(
      action: map['action'] as String,
      defaultResponsePlatforms:
          (map['defaultResponsePlatforms'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      endInteraction: map['endInteraction'] as bool,
      events: (map['events'] as List).cast<String>(),
      followupIntentInfo: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentFollowupIntentInfoResponse>(
          map['followupIntentInfo'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentFollowupIntentInfoResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      inputContextNames: (map['inputContextNames'] as List).cast<String>(),
      isFallback: map['isFallback'] as bool,
      liveAgentHandoff: map['liveAgentHandoff'] as bool,
      messages: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentMessageResponse>(
          map['messages'],
          (value) => GoogleCloudDialogflowV2beta1IntentMessageResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      mlDisabled: map['mlDisabled'] as bool,
      mlEnabled: map['mlEnabled'] as bool,
      name: map['name'] as String,
      outputContexts:
          pulumi.Input.decodeList<GoogleCloudDialogflowV2beta1ContextResponse>(
              map['outputContexts'],
              (value) => GoogleCloudDialogflowV2beta1ContextResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      parameters: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentParameterResponse>(
          map['parameters'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentParameterResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      parentFollowupIntentName: map['parentFollowupIntentName'] as String,
      priority: map['priority'] as int,
      resetContexts: map['resetContexts'] as bool,
      rootFollowupIntentName: map['rootFollowupIntentName'] as String,
      trainingPhrases: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2beta1IntentTrainingPhraseResponse>(
          map['trainingPhrases'],
          (value) =>
              GoogleCloudDialogflowV2beta1IntentTrainingPhraseResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      webhookState: map['webhookState'] as String,
    );
  }
}

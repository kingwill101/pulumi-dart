// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_context_response.dart';
import 'google_cloud_dialogflow_v2_intent_followup_intent_info_response.dart';
import 'google_cloud_dialogflow_v2_intent_message_response.dart';
import 'google_cloud_dialogflow_v2_intent_parameter_response.dart';
import 'google_cloud_dialogflow_v2_intent_training_phrase_response.dart';

/// Result data returned by getIntent.
class GetIntentResult {
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

  /// Read-only. Information about all followup intents that have this intent as a direct or indirect parent. We populate this field only in the output.
  final List<GoogleCloudDialogflowV2IntentFollowupIntentInfoResponse>
      followupIntentInfo;

  /// Optional. The list of context names required for this intent to be triggered. Format: `projects//agent/sessions/-/contexts/`.
  final List<String> inputContextNames;

  /// Optional. Indicates whether this is a fallback intent.
  final bool isFallback;

  /// Optional. Indicates that a live agent should be brought in to handle the interaction with the user. In most cases, when you set this flag to true, you would also want to set end_interaction to true as well. Default is false.
  final bool liveAgentHandoff;

  /// Optional. The collection of rich messages corresponding to the `Response` field in the Dialogflow console.
  final List<GoogleCloudDialogflowV2IntentMessageResponse> messages;

  /// Optional. Indicates whether Machine Learning is disabled for the intent. Note: If `ml_disabled` setting is set to true, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off.
  final bool mlDisabled;

  /// Optional. The unique identifier of this intent. Required for Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Format: `projects//agent/intents/`.
  final String name;

  /// Optional. The collection of contexts that are activated when the intent is matched. Context messages in this collection should not set the parameters field. Setting the `lifespan_count` to 0 will reset the context when the intent is matched. Format: `projects//agent/sessions/-/contexts/`.
  final List<GoogleCloudDialogflowV2ContextResponse> outputContexts;

  /// Optional. The collection of parameters associated with the intent.
  final List<GoogleCloudDialogflowV2IntentParameterResponse> parameters;

  /// Read-only after creation. The unique identifier of the parent intent in the chain of followup intents. You can set this field when creating an intent, for example with CreateIntent or BatchUpdateIntents, in order to make this intent a followup intent. It identifies the parent followup intent. Format: `projects//agent/intents/`.
  final String parentFollowupIntentName;

  /// Optional. The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final int priority;

  /// Optional. Indicates whether to delete all contexts in the current session when this intent is matched.
  final bool resetContexts;

  /// Read-only. The unique identifier of the root intent in the chain of followup intents. It identifies the correct followup intents chain for this intent. We populate this field only in the output. Format: `projects//agent/intents/`.
  final String rootFollowupIntentName;

  /// Optional. The collection of examples that the agent is trained on.
  final List<GoogleCloudDialogflowV2IntentTrainingPhraseResponse>
      trainingPhrases;

  /// Optional. Indicates whether webhooks are enabled for the intent.
  final String webhookState;

  /// Creates a new [GetIntentResult].
  /// [action] Optional. The name of the action associated with the intent. Note: The action name must not contain whitespaces.
  /// [defaultResponsePlatforms] Optional. The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
  /// [displayName] The name of this intent.
  /// [endInteraction] Optional. Indicates that this intent ends an interaction. Some integrations (e.g., Actions on Google or Dialogflow phone gateway) use this information to close interaction with an end user. Default is false.
  /// [events] Optional. The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of the contexts must be present in the active user session for an event to trigger this intent. Event names are limited to 150 characters.
  /// [followupIntentInfo] Read-only. Information about all followup intents that have this intent as a direct or indirect parent. We populate this field only in the output.
  /// [inputContextNames] Optional. The list of context names required for this intent to be triggered. Format: `projects//agent/sessions/-/contexts/`.
  /// [isFallback] Optional. Indicates whether this is a fallback intent.
  /// [liveAgentHandoff] Optional. Indicates that a live agent should be brought in to handle the interaction with the user. In most cases, when you set this flag to true, you would also want to set end_interaction to true as well. Default is false.
  /// [messages] Optional. The collection of rich messages corresponding to the `Response` field in the Dialogflow console.
  /// [mlDisabled] Optional. Indicates whether Machine Learning is disabled for the intent. Note: If `ml_disabled` setting is set to true, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off.
  /// [name] Optional. The unique identifier of this intent. Required for Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Format: `projects//agent/intents/`.
  /// [outputContexts] Optional. The collection of contexts that are activated when the intent is matched. Context messages in this collection should not set the parameters field. Setting the `lifespan_count` to 0 will reset the context when the intent is matched. Format: `projects//agent/sessions/-/contexts/`.
  /// [parameters] Optional. The collection of parameters associated with the intent.
  /// [parentFollowupIntentName] Read-only after creation. The unique identifier of the parent intent in the chain of followup intents. You can set this field when creating an intent, for example with CreateIntent or BatchUpdateIntents, in order to make this intent a followup intent. It identifies the parent followup intent. Format: `projects//agent/intents/`.
  /// [priority] Optional. The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  /// [resetContexts] Optional. Indicates whether to delete all contexts in the current session when this intent is matched.
  /// [rootFollowupIntentName] Read-only. The unique identifier of the root intent in the chain of followup intents. It identifies the correct followup intents chain for this intent. We populate this field only in the output. Format: `projects//agent/intents/`.
  /// [trainingPhrases] Optional. The collection of examples that the agent is trained on.
  /// [webhookState] Optional. Indicates whether webhooks are enabled for the intent.
  GetIntentResult({
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
        GoogleCloudDialogflowV2IntentFollowupIntentInfoResponse,
        Map<String, dynamic>>(followupIntentInfo, (value) => value.toMap());
    map['inputContextNames'] = inputContextNames;
    map['isFallback'] = isFallback;
    map['liveAgentHandoff'] = liveAgentHandoff;
    map['messages'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2IntentMessageResponse,
        Map<String, dynamic>>(messages, (value) => value.toMap());
    map['mlDisabled'] = mlDisabled;
    map['name'] = name;
    map['outputContexts'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2ContextResponse,
        Map<String, dynamic>>(outputContexts, (value) => value.toMap());
    map['parameters'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2IntentParameterResponse,
        Map<String, dynamic>>(parameters, (value) => value.toMap());
    map['parentFollowupIntentName'] = parentFollowupIntentName;
    map['priority'] = priority;
    map['resetContexts'] = resetContexts;
    map['rootFollowupIntentName'] = rootFollowupIntentName;
    map['trainingPhrases'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowV2IntentTrainingPhraseResponse,
        Map<String, dynamic>>(trainingPhrases, (value) => value.toMap());
    map['webhookState'] = webhookState;
    return map;
  }

  factory GetIntentResult.fromMap(Map<String, dynamic> map) {
    return GetIntentResult(
      action: map['action'] as String,
      defaultResponsePlatforms:
          (map['defaultResponsePlatforms'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      endInteraction: map['endInteraction'] as bool,
      events: (map['events'] as List).cast<String>(),
      followupIntentInfo: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2IntentFollowupIntentInfoResponse>(
          map['followupIntentInfo'],
          (value) =>
              GoogleCloudDialogflowV2IntentFollowupIntentInfoResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      inputContextNames: (map['inputContextNames'] as List).cast<String>(),
      isFallback: map['isFallback'] as bool,
      liveAgentHandoff: map['liveAgentHandoff'] as bool,
      messages:
          pulumi.Input.decodeList<GoogleCloudDialogflowV2IntentMessageResponse>(
              map['messages'],
              (value) => GoogleCloudDialogflowV2IntentMessageResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      mlDisabled: map['mlDisabled'] as bool,
      name: map['name'] as String,
      outputContexts:
          pulumi.Input.decodeList<GoogleCloudDialogflowV2ContextResponse>(
              map['outputContexts'],
              (value) => GoogleCloudDialogflowV2ContextResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      parameters: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2IntentParameterResponse>(
          map['parameters'],
          (value) => GoogleCloudDialogflowV2IntentParameterResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      parentFollowupIntentName: map['parentFollowupIntentName'] as String,
      priority: map['priority'] as int,
      resetContexts: map['resetContexts'] as bool,
      rootFollowupIntentName: map['rootFollowupIntentName'] as String,
      trainingPhrases: pulumi.Input.decodeList<
              GoogleCloudDialogflowV2IntentTrainingPhraseResponse>(
          map['trainingPhrases'],
          (value) =>
              GoogleCloudDialogflowV2IntentTrainingPhraseResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      webhookState: map['webhookState'] as String,
    );
  }
}

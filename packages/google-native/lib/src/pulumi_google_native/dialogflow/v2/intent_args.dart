// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_v2_context.dart';
import 'google_cloud_dialogflow_v2_intent_message.dart';
import 'google_cloud_dialogflow_v2_intent_parameter.dart';
import 'google_cloud_dialogflow_v2_intent_training_phrase.dart';
import 'intent_default_response_platforms_item.dart';
import 'intent_webhook_state.dart';

/// The set of arguments for Intent.
class IntentArgs {
  /// Optional. The name of the action associated with the intent. Note: The action name must not contain whitespaces.
  final pulumi.Input<String>? action;

  /// Optional. The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
  final pulumi.Input<List<IntentDefaultResponsePlatformsItem>>?
      defaultResponsePlatforms;

  /// The name of this intent.
  final pulumi.Input<String> displayName;

  /// Optional. Indicates that this intent ends an interaction. Some integrations (e.g., Actions on Google or Dialogflow phone gateway) use this information to close interaction with an end user. Default is false.
  final pulumi.Input<bool>? endInteraction;

  /// Optional. The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of the contexts must be present in the active user session for an event to trigger this intent. Event names are limited to 150 characters.
  final pulumi.Input<List<String>>? events;

  /// Optional. The list of context names required for this intent to be triggered. Format: `projects//agent/sessions/-/contexts/`.
  final pulumi.Input<List<String>>? inputContextNames;

  /// Optional. The resource view to apply to the returned intent.
  final pulumi.Input<String>? intentView;

  /// Optional. Indicates whether this is a fallback intent.
  final pulumi.Input<bool>? isFallback;

  /// Optional. The language used to access language-specific data. If not specified, the agent's default language is used. For more information, see [Multilingual intent and entity data](https://cloud.google.com/dialogflow/docs/agents-multilingual#intent-entity).
  final pulumi.Input<String>? languageCode;

  /// Optional. Indicates that a live agent should be brought in to handle the interaction with the user. In most cases, when you set this flag to true, you would also want to set end_interaction to true as well. Default is false.
  final pulumi.Input<bool>? liveAgentHandoff;
  final pulumi.Input<String>? location;

  /// Optional. The collection of rich messages corresponding to the `Response` field in the Dialogflow console.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentMessage>>? messages;

  /// Optional. Indicates whether Machine Learning is disabled for the intent. Note: If `ml_disabled` setting is set to true, then this intent is not taken into account during inference in `ML ONLY` match mode. Also, auto-markup in the UI is turned off.
  final pulumi.Input<bool>? mlDisabled;

  /// Optional. The unique identifier of this intent. Required for Intents.UpdateIntent and Intents.BatchUpdateIntents methods. Format: `projects//agent/intents/`.
  final pulumi.Input<String>? name;

  /// Optional. The collection of contexts that are activated when the intent is matched. Context messages in this collection should not set the parameters field. Setting the `lifespan_count` to 0 will reset the context when the intent is matched. Format: `projects//agent/sessions/-/contexts/`.
  final pulumi.Input<List<GoogleCloudDialogflowV2Context>>? outputContexts;

  /// Optional. The collection of parameters associated with the intent.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentParameter>>? parameters;

  /// Read-only after creation. The unique identifier of the parent intent in the chain of followup intents. You can set this field when creating an intent, for example with CreateIntent or BatchUpdateIntents, in order to make this intent a followup intent. It identifies the parent followup intent. Format: `projects//agent/intents/`.
  final pulumi.Input<String>? parentFollowupIntentName;

  /// Optional. The priority of this intent. Higher numbers represent higher priorities. - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds to the `Normal` priority in the console. - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final pulumi.Input<int>? priority;
  final pulumi.Input<String>? project;

  /// Optional. Indicates whether to delete all contexts in the current session when this intent is matched.
  final pulumi.Input<bool>? resetContexts;

  /// Optional. The collection of examples that the agent is trained on.
  final pulumi.Input<List<GoogleCloudDialogflowV2IntentTrainingPhrase>>?
      trainingPhrases;

  /// Optional. Indicates whether webhooks are enabled for the intent.
  final pulumi.Input<IntentWebhookState>? webhookState;

  IntentArgs({
    this.action,
    this.defaultResponsePlatforms,
    required this.displayName,
    this.endInteraction,
    this.events,
    this.inputContextNames,
    this.intentView,
    this.isFallback,
    this.languageCode,
    this.liveAgentHandoff,
    this.location,
    this.messages,
    this.mlDisabled,
    this.name,
    this.outputContexts,
    this.parameters,
    this.parentFollowupIntentName,
    this.priority,
    this.project,
    this.resetContexts,
    this.trainingPhrases,
    this.webhookState,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue;
    }
    final defaultResponsePlatformsValue = defaultResponsePlatforms;
    if (defaultResponsePlatformsValue != null) {
      map['defaultResponsePlatforms'] = pulumi.Input.mapOptionalInputValue<
              List<IntentDefaultResponsePlatformsItem>, List<String>>(
          defaultResponsePlatformsValue,
          (value) => pulumi.Input.encodeList<IntentDefaultResponsePlatformsItem,
              String>(value, (value) => value.value));
    }
    map['displayName'] = displayName;
    final endInteractionValue = endInteraction;
    if (endInteractionValue != null) {
      map['endInteraction'] = endInteractionValue;
    }
    final eventsValue = events;
    if (eventsValue != null) {
      map['events'] = eventsValue;
    }
    final inputContextNamesValue = inputContextNames;
    if (inputContextNamesValue != null) {
      map['inputContextNames'] = inputContextNamesValue;
    }
    final intentViewValue = intentView;
    if (intentViewValue != null) {
      map['intentView'] = intentViewValue;
    }
    final isFallbackValue = isFallback;
    if (isFallbackValue != null) {
      map['isFallback'] = isFallbackValue;
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final liveAgentHandoffValue = liveAgentHandoff;
    if (liveAgentHandoffValue != null) {
      map['liveAgentHandoff'] = liveAgentHandoffValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final messagesValue = messages;
    if (messagesValue != null) {
      map['messages'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowV2IntentMessage>,
              List<Map<String, dynamic>>>(
          messagesValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowV2IntentMessage,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final mlDisabledValue = mlDisabled;
    if (mlDisabledValue != null) {
      map['mlDisabled'] = mlDisabledValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final outputContextsValue = outputContexts;
    if (outputContextsValue != null) {
      map['outputContexts'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowV2Context>, List<Map<String, dynamic>>>(
          outputContextsValue,
          (value) => pulumi.Input.encodeList<GoogleCloudDialogflowV2Context,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowV2IntentParameter>,
              List<Map<String, dynamic>>>(
          parametersValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowV2IntentParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final parentFollowupIntentNameValue = parentFollowupIntentName;
    if (parentFollowupIntentNameValue != null) {
      map['parentFollowupIntentName'] = parentFollowupIntentNameValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final resetContextsValue = resetContexts;
    if (resetContextsValue != null) {
      map['resetContexts'] = resetContextsValue;
    }
    final trainingPhrasesValue = trainingPhrases;
    if (trainingPhrasesValue != null) {
      map['trainingPhrases'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowV2IntentTrainingPhrase>,
              List<Map<String, dynamic>>>(
          trainingPhrasesValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowV2IntentTrainingPhrase,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final webhookStateValue = webhookState;
    if (webhookStateValue != null) {
      map['webhookState'] =
          pulumi.Input.mapOptionalInputValue<IntentWebhookState, String>(
              webhookStateValue, (value) => value.value);
    }
    return map;
  }

  factory IntentArgs.fromMap(Map<String, dynamic> map) {
    return IntentArgs(
      action: pulumi.Input.asOptionalInput<String>(map['action']),
      defaultResponsePlatforms: pulumi.Input.asOptionalInput<
              List<IntentDefaultResponsePlatformsItem>>(
          map['defaultResponsePlatforms']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      endInteraction: pulumi.Input.asOptionalInput<bool>(map['endInteraction']),
      events: pulumi.Input.asOptionalInput<List<String>>(map['events']),
      inputContextNames:
          pulumi.Input.asOptionalInput<List<String>>(map['inputContextNames']),
      intentView: pulumi.Input.asOptionalInput<String>(map['intentView']),
      isFallback: pulumi.Input.asOptionalInput<bool>(map['isFallback']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      liveAgentHandoff:
          pulumi.Input.asOptionalInput<bool>(map['liveAgentHandoff']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      messages: pulumi.Input.asOptionalInput<
          List<GoogleCloudDialogflowV2IntentMessage>>(map['messages']),
      mlDisabled: pulumi.Input.asOptionalInput<bool>(map['mlDisabled']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      outputContexts:
          pulumi.Input.asOptionalInput<List<GoogleCloudDialogflowV2Context>>(
              map['outputContexts']),
      parameters: pulumi.Input.asOptionalInput<
          List<GoogleCloudDialogflowV2IntentParameter>>(map['parameters']),
      parentFollowupIntentName:
          pulumi.Input.asOptionalInput<String>(map['parentFollowupIntentName']),
      priority: pulumi.Input.asOptionalInput<int>(map['priority']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resetContexts: pulumi.Input.asOptionalInput<bool>(map['resetContexts']),
      trainingPhrases: pulumi.Input.asOptionalInput<
              List<GoogleCloudDialogflowV2IntentTrainingPhrase>>(
          map['trainingPhrases']),
      webhookState:
          pulumi.Input.asOptionalInput<IntentWebhookState>(map['webhookState']),
    );
  }
}

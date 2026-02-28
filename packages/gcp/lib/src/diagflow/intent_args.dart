// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_diagflow_intent_intent_args_doc}
/// The set of arguments for Intent.
/// {@endtemplate}
/// {@macro pulumi_diagflow_intent_intent_args_doc}
class IntentArgs {
  /// The name of the action associated with the intent.
  /// Note: The action name must not contain whitespaces.
  final pulumi.Input<String>? action;

  /// The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED
  /// (i.e. default platform).
  /// Each value may be one of: `FACEBOOK`, `SLACK`, `TELEGRAM`, `KIK`, `SKYPE`, `LINE`, `VIBER`, `ACTIONS_ON_GOOGLE`, `GOOGLE_HANGOUTS`.
  final pulumi.Input<List<String>>? defaultResponsePlatforms;

  /// The name of this intent to be displayed on the console.
  final pulumi.Input<String> displayName;

  /// The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of
  /// the contexts must be present in the active user session for an event to trigger this intent. See the
  /// [events reference](https://cloud.google.com/dialogflow/docs/events-overview) for more details.
  final pulumi.Input<List<String>>? events;

  /// The list of context names required for this intent to be triggered.
  /// Format: projects/<Project ID>/agent/sessions/-/contexts/<Context ID>.
  final pulumi.Input<List<String>>? inputContextNames;

  /// Indicates whether this is a fallback intent.
  final pulumi.Input<bool>? isFallback;

  /// Indicates whether Machine Learning is disabled for the intent.
  /// Note: If mlDisabled setting is set to true, then this intent is not taken into account during inference in ML
  /// ONLY match mode. Also, auto-markup in the UI is turned off.
  final pulumi.Input<bool>? mlDisabled;

  /// The unique identifier of the parent intent in the chain of followup intents.
  /// Format: projects/<Project ID>/agent/intents/<Intent ID>.
  final pulumi.Input<String>? parentFollowupIntentName;

  /// The priority of this intent. Higher numbers represent higher priorities.
  /// - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds
  /// to the Normal priority in the console.
  /// - If the supplied value is negative, the intent is ignored in runtime detect intent requests.
  final pulumi.Input<int>? priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Indicates whether to delete all contexts in the current session when this intent is matched.
  final pulumi.Input<bool>? resetContexts;

  /// Indicates whether webhooks are enabled for the intent.
  /// * WEBHOOK_STATE_ENABLED: Webhook is enabled in the agent and in the intent.
  /// * WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING: Webhook is enabled in the agent and in the intent. Also, each slot
  /// filling prompt is forwarded to the webhook.
  /// Possible values are: `WEBHOOK_STATE_ENABLED`, `WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING`.
  final pulumi.Input<String>? webhookState;

  /// Creates a new [IntentArgs].
  /// [action] The name of the action associated with the intent.
  /// [defaultResponsePlatforms] The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED
  /// [displayName] The name of this intent to be displayed on the console.
  /// [events] The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of
  /// [inputContextNames] The list of context names required for this intent to be triggered.
  /// [isFallback] Indicates whether this is a fallback intent.
  /// [mlDisabled] Indicates whether Machine Learning is disabled for the intent.
  /// [parentFollowupIntentName] The unique identifier of the parent intent in the chain of followup intents.
  /// [priority] The priority of this intent. Higher numbers represent higher priorities.
  /// [project] The ID of the project in which the resource belongs.
  /// [resetContexts] Indicates whether to delete all contexts in the current session when this intent is matched.
  /// [webhookState] Indicates whether webhooks are enabled for the intent.
  IntentArgs({
    String? action,
    List<String>? defaultResponsePlatforms,
    required String displayName,
    List<String>? events,
    List<String>? inputContextNames,
    bool? isFallback,
    bool? mlDisabled,
    String? parentFollowupIntentName,
    int? priority,
    String? project,
    bool? resetContexts,
    String? webhookState,
  })  : action = pulumi.Input.asOptionalInput<String>(action),
        defaultResponsePlatforms = pulumi.Input.asOptionalInput<List<String>>(
            defaultResponsePlatforms),
        displayName = pulumi.Input.asInput<String>(displayName),
        events = pulumi.Input.asOptionalInput<List<String>>(events),
        inputContextNames =
            pulumi.Input.asOptionalInput<List<String>>(inputContextNames),
        isFallback = pulumi.Input.asOptionalInput<bool>(isFallback),
        mlDisabled = pulumi.Input.asOptionalInput<bool>(mlDisabled),
        parentFollowupIntentName =
            pulumi.Input.asOptionalInput<String>(parentFollowupIntentName),
        priority = pulumi.Input.asOptionalInput<int>(priority),
        project = pulumi.Input.asOptionalInput<String>(project),
        resetContexts = pulumi.Input.asOptionalInput<bool>(resetContexts),
        webhookState = pulumi.Input.asOptionalInput<String>(webhookState);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue;
    }
    final defaultResponsePlatformsValue = defaultResponsePlatforms;
    if (defaultResponsePlatformsValue != null) {
      map['defaultResponsePlatforms'] = defaultResponsePlatformsValue;
    }
    map['displayName'] = displayName;
    final eventsValue = events;
    if (eventsValue != null) {
      map['events'] = eventsValue;
    }
    final inputContextNamesValue = inputContextNames;
    if (inputContextNamesValue != null) {
      map['inputContextNames'] = inputContextNamesValue;
    }
    final isFallbackValue = isFallback;
    if (isFallbackValue != null) {
      map['isFallback'] = isFallbackValue;
    }
    final mlDisabledValue = mlDisabled;
    if (mlDisabledValue != null) {
      map['mlDisabled'] = mlDisabledValue;
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
    final webhookStateValue = webhookState;
    if (webhookStateValue != null) {
      map['webhookState'] = webhookStateValue;
    }
    return map;
  }

  factory IntentArgs.fromMap(Map<String, dynamic> map) {
    return IntentArgs(
      action: map['action'] == null ? null : map['action'] as String,
      defaultResponsePlatforms: map['defaultResponsePlatforms'] == null
          ? null
          : (map['defaultResponsePlatforms'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      events:
          map['events'] == null ? null : (map['events'] as List).cast<String>(),
      inputContextNames: map['inputContextNames'] == null
          ? null
          : (map['inputContextNames'] as List).cast<String>(),
      isFallback: map['isFallback'] == null ? null : map['isFallback'] as bool,
      mlDisabled: map['mlDisabled'] == null ? null : map['mlDisabled'] as bool,
      parentFollowupIntentName: map['parentFollowupIntentName'] == null
          ? null
          : map['parentFollowupIntentName'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      resetContexts:
          map['resetContexts'] == null ? null : map['resetContexts'] as bool,
      webhookState:
          map['webhookState'] == null ? null : map['webhookState'] as String,
    );
  }
}

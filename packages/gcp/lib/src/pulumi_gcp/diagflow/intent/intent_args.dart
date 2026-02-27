// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Intent.
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

  IntentArgs({
    this.action,
    this.defaultResponsePlatforms,
    required this.displayName,
    this.events,
    this.inputContextNames,
    this.isFallback,
    this.mlDisabled,
    this.parentFollowupIntentName,
    this.priority,
    this.project,
    this.resetContexts,
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
      action: pulumi.Input.asOptionalInput<String>(map['action']),
      defaultResponsePlatforms: pulumi.Input.asOptionalInput<List<String>>(
          map['defaultResponsePlatforms']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      events: pulumi.Input.asOptionalInput<List<String>>(map['events']),
      inputContextNames:
          pulumi.Input.asOptionalInput<List<String>>(map['inputContextNames']),
      isFallback: pulumi.Input.asOptionalInput<bool>(map['isFallback']),
      mlDisabled: pulumi.Input.asOptionalInput<bool>(map['mlDisabled']),
      parentFollowupIntentName:
          pulumi.Input.asOptionalInput<String>(map['parentFollowupIntentName']),
      priority: pulumi.Input.asOptionalInput<int>(map['priority']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resetContexts: pulumi.Input.asOptionalInput<bool>(map['resetContexts']),
      webhookState: pulumi.Input.asOptionalInput<String>(map['webhookState']),
    );
  }
}

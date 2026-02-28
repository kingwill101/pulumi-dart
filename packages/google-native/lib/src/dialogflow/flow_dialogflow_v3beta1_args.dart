// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_advanced_settings.dart';
import 'google_cloud_dialogflow_cx_v3beta1_event_handler.dart';
import 'google_cloud_dialogflow_cx_v3beta1_knowledge_connector_settings.dart';
import 'google_cloud_dialogflow_cx_v3beta1_nlu_settings.dart';
import 'google_cloud_dialogflow_cx_v3beta1_transition_route.dart';

/// {@template pulumi_dialogflow_v3beta1_flow_dialogflow_v3beta1_args_doc}
/// The set of arguments for Flow.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_flow_dialogflow_v3beta1_args_doc}
class FlowDialogflowV3beta1Args {
  /// Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1AdvancedSettings>?
      advancedSettings;
  final pulumi.Input<String> agentId;

  /// The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;

  /// The human-readable name of the flow.
  final pulumi.Input<String> displayName;

  /// A flow's event handlers serve two purposes: * They are responsible for handling events (e.g. no match, webhook errors) in the flow. * They are inherited by every page's event handlers, which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow. Unlike transition_routes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1EventHandler>>?
      eventHandlers;

  /// Optional. Knowledge connector configuration.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings>?
      knowledgeConnectorSettings;

  /// The language of the following fields in `flow`: * `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;

  /// The unique identifier of the flow. Format: `projects//locations//agents//flows/`.
  final pulumi.Input<String>? name;

  /// NLU related settings of the flow.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1NluSettings>? nluSettings;
  final pulumi.Input<String>? project;

  /// A flow's transition route group serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition route groups. Transition route groups defined in the page have higher priority than those defined in the flow. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final pulumi.Input<List<String>>? transitionRouteGroups;

  /// A flow's transition routes serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition routes and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow. TransitionRoutes are evalauted in the following order: * TransitionRoutes with intent specified. * TransitionRoutes with only condition specified. TransitionRoutes with intent specified are inherited by pages in the flow.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1TransitionRoute>>?
      transitionRoutes;

  /// Creates a new [FlowDialogflowV3beta1Args].
  /// [advancedSettings] Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [agentId] Required.
  /// [description] The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The human-readable name of the flow.
  /// [eventHandlers] A flow's event handlers serve two purposes: * They are responsible for handling events (e.g. no match, webhook errors) in the flow. * They are inherited by every page's event handlers, which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow. Unlike transition_routes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  /// [knowledgeConnectorSettings] Optional. Knowledge connector configuration.
  /// [languageCode] The language of the following fields in `flow`: * `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  /// [location] Optional.
  /// [name] The unique identifier of the flow. Format: `projects//locations//agents//flows/`.
  /// [nluSettings] NLU related settings of the flow.
  /// [project] Optional.
  /// [transitionRouteGroups] A flow's transition route group serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition route groups. Transition route groups defined in the page have higher priority than those defined in the flow. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  /// [transitionRoutes] A flow's transition routes serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition routes and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow. TransitionRoutes are evalauted in the following order: * TransitionRoutes with intent specified. * TransitionRoutes with only condition specified. TransitionRoutes with intent specified are inherited by pages in the flow.
  FlowDialogflowV3beta1Args({
    GoogleCloudDialogflowCxV3beta1AdvancedSettings? advancedSettings,
    required String agentId,
    String? description,
    required String displayName,
    List<GoogleCloudDialogflowCxV3beta1EventHandler>? eventHandlers,
    GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings?
        knowledgeConnectorSettings,
    String? languageCode,
    String? location,
    String? name,
    GoogleCloudDialogflowCxV3beta1NluSettings? nluSettings,
    String? project,
    List<String>? transitionRouteGroups,
    List<GoogleCloudDialogflowCxV3beta1TransitionRoute>? transitionRoutes,
  })  : advancedSettings = pulumi.Input.asOptionalInput<
            GoogleCloudDialogflowCxV3beta1AdvancedSettings>(advancedSettings),
        agentId = pulumi.Input.asInput<String>(agentId),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        eventHandlers = pulumi.Input.asOptionalInput<
            List<GoogleCloudDialogflowCxV3beta1EventHandler>>(eventHandlers),
        knowledgeConnectorSettings = pulumi.Input.asOptionalInput<
                GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings>(
            knowledgeConnectorSettings),
        languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        nluSettings = pulumi.Input.asOptionalInput<
            GoogleCloudDialogflowCxV3beta1NluSettings>(nluSettings),
        project = pulumi.Input.asOptionalInput<String>(project),
        transitionRouteGroups =
            pulumi.Input.asOptionalInput<List<String>>(transitionRouteGroups),
        transitionRoutes = pulumi.Input.asOptionalInput<
                List<GoogleCloudDialogflowCxV3beta1TransitionRoute>>(
            transitionRoutes);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedSettingsValue = advancedSettings;
    if (advancedSettingsValue != null) {
      map['advancedSettings'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3beta1AdvancedSettings,
              Map<String, dynamic>>(
          advancedSettingsValue, (value) => value.toMap());
    }
    map['agentId'] = agentId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final eventHandlersValue = eventHandlers;
    if (eventHandlersValue != null) {
      map['eventHandlers'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3beta1EventHandler>,
              List<Map<String, dynamic>>>(
          eventHandlersValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3beta1EventHandler,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final knowledgeConnectorSettingsValue = knowledgeConnectorSettings;
    if (knowledgeConnectorSettingsValue != null) {
      map['knowledgeConnectorSettings'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings,
              Map<String, dynamic>>(
          knowledgeConnectorSettingsValue, (value) => value.toMap());
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nluSettingsValue = nluSettings;
    if (nluSettingsValue != null) {
      map['nluSettings'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3beta1NluSettings,
          Map<String, dynamic>>(nluSettingsValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final transitionRouteGroupsValue = transitionRouteGroups;
    if (transitionRouteGroupsValue != null) {
      map['transitionRouteGroups'] = transitionRouteGroupsValue;
    }
    final transitionRoutesValue = transitionRoutes;
    if (transitionRoutesValue != null) {
      map['transitionRoutes'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3beta1TransitionRoute>,
              List<Map<String, dynamic>>>(
          transitionRoutesValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3beta1TransitionRoute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory FlowDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return FlowDialogflowV3beta1Args(
      advancedSettings: map['advancedSettings'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1AdvancedSettings.fromMap(
              (map['advancedSettings'] as Map).cast<String, dynamic>()),
      agentId: map['agentId'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      eventHandlers: map['eventHandlers'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1EventHandler>(
              map['eventHandlers'],
              (value) => GoogleCloudDialogflowCxV3beta1EventHandler.fromMap(
                  (value as Map).cast<String, dynamic>())),
      knowledgeConnectorSettings: map['knowledgeConnectorSettings'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings.fromMap(
              (map['knowledgeConnectorSettings'] as Map)
                  .cast<String, dynamic>()),
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nluSettings: map['nluSettings'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1NluSettings.fromMap(
              (map['nluSettings'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      transitionRouteGroups: map['transitionRouteGroups'] == null
          ? null
          : (map['transitionRouteGroups'] as List).cast<String>(),
      transitionRoutes: map['transitionRoutes'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowCxV3beta1TransitionRoute>(
              map['transitionRoutes'],
              (value) => GoogleCloudDialogflowCxV3beta1TransitionRoute.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

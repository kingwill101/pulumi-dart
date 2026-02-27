// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3_advanced_settings.dart';
import 'google_cloud_dialogflow_cx_v3_event_handler.dart';
import 'google_cloud_dialogflow_cx_v3_knowledge_connector_settings.dart';
import 'google_cloud_dialogflow_cx_v3_nlu_settings.dart';
import 'google_cloud_dialogflow_cx_v3_transition_route.dart';

/// The set of arguments for Flow.
class FlowArgs {
  /// Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final Input<GoogleCloudDialogflowCxV3AdvancedSettings>? advancedSettings;
  final Input<String> agentId;

  /// The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  final Input<String>? description;

  /// The human-readable name of the flow.
  final Input<String> displayName;

  /// A flow's event handlers serve two purposes: * They are responsible for handling events (e.g. no match, webhook errors) in the flow. * They are inherited by every page's event handlers, which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow. Unlike transition_routes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  final Input<List<GoogleCloudDialogflowCxV3EventHandler>>? eventHandlers;

  /// Optional. Knowledge connector configuration.
  final Input<GoogleCloudDialogflowCxV3KnowledgeConnectorSettings>?
      knowledgeConnectorSettings;

  /// The language of the following fields in `flow`: * `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final Input<String>? languageCode;
  final Input<String>? location;

  /// The unique identifier of the flow. Format: `projects//locations//agents//flows/`.
  final Input<String>? name;

  /// NLU related settings of the flow.
  final Input<GoogleCloudDialogflowCxV3NluSettings>? nluSettings;
  final Input<String>? project;

  /// A flow's transition route group serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition route groups. Transition route groups defined in the page have higher priority than those defined in the flow. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final Input<List<String>>? transitionRouteGroups;

  /// A flow's transition routes serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition routes and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow. TransitionRoutes are evalauted in the following order: * TransitionRoutes with intent specified. * TransitionRoutes with only condition specified. TransitionRoutes with intent specified are inherited by pages in the flow.
  final Input<List<GoogleCloudDialogflowCxV3TransitionRoute>>? transitionRoutes;

  FlowArgs({
    this.advancedSettings,
    required this.agentId,
    this.description,
    required this.displayName,
    this.eventHandlers,
    this.knowledgeConnectorSettings,
    this.languageCode,
    this.location,
    this.name,
    this.nluSettings,
    this.project,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedSettingsValue = advancedSettings;
    if (advancedSettingsValue != null) {
      map['advancedSettings'] = Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3AdvancedSettings, Map<String, dynamic>>(
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
      map['eventHandlers'] = Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3EventHandler>,
              List<Map<String, dynamic>>>(
          eventHandlersValue,
          (value) => Input.encodeList<GoogleCloudDialogflowCxV3EventHandler,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final knowledgeConnectorSettingsValue = knowledgeConnectorSettings;
    if (knowledgeConnectorSettingsValue != null) {
      map['knowledgeConnectorSettings'] = Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3KnowledgeConnectorSettings,
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
      map['nluSettings'] = Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3NluSettings,
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
      map['transitionRoutes'] = Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3TransitionRoute>,
              List<Map<String, dynamic>>>(
          transitionRoutesValue,
          (value) => Input.encodeList<GoogleCloudDialogflowCxV3TransitionRoute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory FlowArgs.fromMap(Map<String, dynamic> map) {
    return FlowArgs(
      advancedSettings:
          Input.asOptionalInput<GoogleCloudDialogflowCxV3AdvancedSettings>(
              map['advancedSettings']),
      agentId: Input.asInput<String>(map['agentId']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      eventHandlers:
          Input.asOptionalInput<List<GoogleCloudDialogflowCxV3EventHandler>>(
              map['eventHandlers']),
      knowledgeConnectorSettings: Input.asOptionalInput<
              GoogleCloudDialogflowCxV3KnowledgeConnectorSettings>(
          map['knowledgeConnectorSettings']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      nluSettings: Input.asOptionalInput<GoogleCloudDialogflowCxV3NluSettings>(
          map['nluSettings']),
      project: Input.asOptionalInput<String>(map['project']),
      transitionRouteGroups:
          Input.asOptionalInput<List<String>>(map['transitionRouteGroups']),
      transitionRoutes:
          Input.asOptionalInput<List<GoogleCloudDialogflowCxV3TransitionRoute>>(
              map['transitionRoutes']),
    );
  }
}

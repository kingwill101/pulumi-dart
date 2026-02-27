// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_advanced_settings.dart';
import 'google_cloud_dialogflow_cx_v3_event_handler.dart';
import 'google_cloud_dialogflow_cx_v3_knowledge_connector_settings.dart';
import 'google_cloud_dialogflow_cx_v3_nlu_settings.dart';
import 'google_cloud_dialogflow_cx_v3_transition_route.dart';

/// The set of arguments for Flow.
class FlowArgs {
  /// Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final pulumi.Input<GoogleCloudDialogflowCxV3AdvancedSettings>?
      advancedSettings;
  final pulumi.Input<String> agentId;

  /// The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;

  /// The human-readable name of the flow.
  final pulumi.Input<String> displayName;

  /// A flow's event handlers serve two purposes: * They are responsible for handling events (e.g. no match, webhook errors) in the flow. * They are inherited by every page's event handlers, which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow. Unlike transition_routes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3EventHandler>>?
      eventHandlers;

  /// Optional. Knowledge connector configuration.
  final pulumi.Input<GoogleCloudDialogflowCxV3KnowledgeConnectorSettings>?
      knowledgeConnectorSettings;

  /// The language of the following fields in `flow`: * `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;

  /// The unique identifier of the flow. Format: `projects//locations//agents//flows/`.
  final pulumi.Input<String>? name;

  /// NLU related settings of the flow.
  final pulumi.Input<GoogleCloudDialogflowCxV3NluSettings>? nluSettings;
  final pulumi.Input<String>? project;

  /// A flow's transition route group serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition route groups. Transition route groups defined in the page have higher priority than those defined in the flow. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final pulumi.Input<List<String>>? transitionRouteGroups;

  /// A flow's transition routes serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition routes and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow. TransitionRoutes are evalauted in the following order: * TransitionRoutes with intent specified. * TransitionRoutes with only condition specified. TransitionRoutes with intent specified are inherited by pages in the flow.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3TransitionRoute>>?
      transitionRoutes;

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
      map['advancedSettings'] = pulumi.Input.mapOptionalInputValue<
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
      map['eventHandlers'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3EventHandler>,
              List<Map<String, dynamic>>>(
          eventHandlersValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3EventHandler,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final knowledgeConnectorSettingsValue = knowledgeConnectorSettings;
    if (knowledgeConnectorSettingsValue != null) {
      map['knowledgeConnectorSettings'] = pulumi.Input.mapOptionalInputValue<
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
      map['nluSettings'] = pulumi.Input.mapOptionalInputValue<
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
      map['transitionRoutes'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3TransitionRoute>,
              List<Map<String, dynamic>>>(
          transitionRoutesValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3TransitionRoute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory FlowArgs.fromMap(Map<String, dynamic> map) {
    return FlowArgs(
      advancedSettings: pulumi.Input.asOptionalInput<
          GoogleCloudDialogflowCxV3AdvancedSettings>(map['advancedSettings']),
      agentId: pulumi.Input.asInput<String>(map['agentId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      eventHandlers: pulumi.Input.asOptionalInput<
          List<GoogleCloudDialogflowCxV3EventHandler>>(map['eventHandlers']),
      knowledgeConnectorSettings: pulumi.Input.asOptionalInput<
              GoogleCloudDialogflowCxV3KnowledgeConnectorSettings>(
          map['knowledgeConnectorSettings']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      nluSettings:
          pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3NluSettings>(
              map['nluSettings']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      transitionRouteGroups: pulumi.Input.asOptionalInput<List<String>>(
          map['transitionRouteGroups']),
      transitionRoutes: pulumi.Input.asOptionalInput<
              List<GoogleCloudDialogflowCxV3TransitionRoute>>(
          map['transitionRoutes']),
    );
  }
}

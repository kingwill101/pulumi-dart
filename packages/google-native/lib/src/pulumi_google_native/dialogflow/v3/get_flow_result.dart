// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_advanced_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_event_handler_response.dart';
import 'google_cloud_dialogflow_cx_v3_knowledge_connector_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_nlu_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_transition_route_response.dart';

/// Result data returned by getFlow.
class GetFlowResult {
  /// Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final GoogleCloudDialogflowCxV3AdvancedSettingsResponse advancedSettings;

  /// The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  final String description;

  /// The human-readable name of the flow.
  final String displayName;

  /// A flow's event handlers serve two purposes: * They are responsible for handling events (e.g. no match, webhook errors) in the flow. * They are inherited by every page's event handlers, which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow. Unlike transition_routes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  final List<GoogleCloudDialogflowCxV3EventHandlerResponse> eventHandlers;

  /// Optional. Knowledge connector configuration.
  final GoogleCloudDialogflowCxV3KnowledgeConnectorSettingsResponse
      knowledgeConnectorSettings;

  /// The unique identifier of the flow. Format: `projects//locations//agents//flows/`.
  final String name;

  /// NLU related settings of the flow.
  final GoogleCloudDialogflowCxV3NluSettingsResponse nluSettings;

  /// A flow's transition route group serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition route groups. Transition route groups defined in the page have higher priority than those defined in the flow. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final List<String> transitionRouteGroups;

  /// A flow's transition routes serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition routes and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow. TransitionRoutes are evalauted in the following order: * TransitionRoutes with intent specified. * TransitionRoutes with only condition specified. TransitionRoutes with intent specified are inherited by pages in the flow.
  final List<GoogleCloudDialogflowCxV3TransitionRouteResponse> transitionRoutes;

  GetFlowResult({
    required this.advancedSettings,
    required this.description,
    required this.displayName,
    required this.eventHandlers,
    required this.knowledgeConnectorSettings,
    required this.name,
    required this.nluSettings,
    required this.transitionRouteGroups,
    required this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advancedSettings'] = advancedSettings.toMap();
    map['description'] = description;
    map['displayName'] = displayName;
    map['eventHandlers'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowCxV3EventHandlerResponse,
        Map<String, dynamic>>(eventHandlers, (value) => value.toMap());
    map['knowledgeConnectorSettings'] = knowledgeConnectorSettings.toMap();
    map['name'] = name;
    map['nluSettings'] = nluSettings.toMap();
    map['transitionRouteGroups'] = transitionRouteGroups;
    map['transitionRoutes'] = pulumi.Input.encodeList<
        GoogleCloudDialogflowCxV3TransitionRouteResponse,
        Map<String, dynamic>>(transitionRoutes, (value) => value.toMap());
    return map;
  }

  factory GetFlowResult.fromMap(Map<String, dynamic> map) {
    return GetFlowResult(
      advancedSettings:
          GoogleCloudDialogflowCxV3AdvancedSettingsResponse.fromMap(
              (map['advancedSettings'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      eventHandlers: pulumi.Input.decodeList<
              GoogleCloudDialogflowCxV3EventHandlerResponse>(
          map['eventHandlers'],
          (value) => GoogleCloudDialogflowCxV3EventHandlerResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      knowledgeConnectorSettings:
          GoogleCloudDialogflowCxV3KnowledgeConnectorSettingsResponse.fromMap(
              (map['knowledgeConnectorSettings'] as Map)
                  .cast<String, dynamic>()),
      name: map['name'] as String,
      nluSettings: GoogleCloudDialogflowCxV3NluSettingsResponse.fromMap(
          (map['nluSettings'] as Map).cast<String, dynamic>()),
      transitionRouteGroups:
          (map['transitionRouteGroups'] as List).cast<String>(),
      transitionRoutes: pulumi.Input.decodeList<
              GoogleCloudDialogflowCxV3TransitionRouteResponse>(
          map['transitionRoutes'],
          (value) => GoogleCloudDialogflowCxV3TransitionRouteResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

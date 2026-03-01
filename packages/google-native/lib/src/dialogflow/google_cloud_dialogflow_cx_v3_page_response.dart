// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_advanced_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_event_handler_response.dart';
import 'google_cloud_dialogflow_cx_v3_form_response.dart';
import 'google_cloud_dialogflow_cx_v3_fulfillment_response.dart';
import 'google_cloud_dialogflow_cx_v3_knowledge_connector_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_transition_route_response.dart';

/// A Dialogflow CX conversation (session) can be described and visualized as a state machine. The states of a CX session are represented by pages. For each flow, you define many pages, where your combined pages can handle a complete conversation on the topics the flow is designed for. At any given moment, exactly one page is the current page, the current page is considered active, and the flow associated with that page is considered active. Every flow has a special start page. When a flow initially becomes active, the start page page becomes the current page. For each conversational turn, the current page will either stay the same or transition to another page. You configure each page to collect information from the end-user that is relevant for the conversational state represented by the page. For more information, see the [Page guide](https://cloud.google.com/dialogflow/cx/docs/concept/page).
class GoogleCloudDialogflowCxV3PageResponse {
  /// Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final GoogleCloudDialogflowCxV3AdvancedSettingsResponse advancedSettings;

  /// The human-readable name of the page, unique within the flow.
  final String displayName;

  /// The fulfillment to call when the session is entering the page.
  final GoogleCloudDialogflowCxV3FulfillmentResponse entryFulfillment;

  /// Handlers associated with the page to handle events such as webhook errors, no match or no input.
  final List<GoogleCloudDialogflowCxV3EventHandlerResponse> eventHandlers;

  /// The form associated with the page, used for collecting parameters relevant to the page.
  final GoogleCloudDialogflowCxV3FormResponse form;

  /// Optional. Knowledge connector configuration.
  final GoogleCloudDialogflowCxV3KnowledgeConnectorSettingsResponse
  knowledgeConnectorSettings;

  /// The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  final String name;

  /// Ordered list of `TransitionRouteGroups` added to the page. Transition route groups must be unique within a page. If the page links both flow-level transition route groups and agent-level transition route groups, the flow-level ones will have higher priority and will be put before the agent-level ones. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -> page's transition route group -> flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final List<String> transitionRouteGroups;

  /// A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  final List<GoogleCloudDialogflowCxV3TransitionRouteResponse> transitionRoutes;

  /// Creates a new [GoogleCloudDialogflowCxV3PageResponse].
  /// [advancedSettings] Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [displayName] The human-readable name of the page, unique within the flow.
  /// [entryFulfillment] The fulfillment to call when the session is entering the page.
  /// [eventHandlers] Handlers associated with the page to handle events such as webhook errors, no match or no input.
  /// [form] The form associated with the page, used for collecting parameters relevant to the page.
  /// [knowledgeConnectorSettings] Optional. Knowledge connector configuration.
  /// [name] The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  /// [transitionRouteGroups] Ordered list of `TransitionRouteGroups` added to the page. Transition route groups must be unique within a page. If the page links both flow-level transition route groups and agent-level transition route groups, the flow-level ones will have higher priority and will be put before the agent-level ones. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -> page's transition route group -> flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  /// [transitionRoutes] A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  GoogleCloudDialogflowCxV3PageResponse({
    required this.advancedSettings,
    required this.displayName,
    required this.entryFulfillment,
    required this.eventHandlers,
    required this.form,
    required this.knowledgeConnectorSettings,
    required this.name,
    required this.transitionRouteGroups,
    required this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': advancedSettings.toMap(),
      'displayName': displayName,
      'entryFulfillment': entryFulfillment.toMap(),
      'eventHandlers':
          pulumi.Input.encodeList<
            GoogleCloudDialogflowCxV3EventHandlerResponse,
            Map<String, dynamic>
          >(eventHandlers, (value) => value.toMap()),
      'form': form.toMap(),
      'knowledgeConnectorSettings': knowledgeConnectorSettings.toMap(),
      'name': name,
      'transitionRouteGroups': transitionRouteGroups,
      'transitionRoutes':
          pulumi.Input.encodeList<
            GoogleCloudDialogflowCxV3TransitionRouteResponse,
            Map<String, dynamic>
          >(transitionRoutes, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDialogflowCxV3PageResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDialogflowCxV3PageResponse(
      advancedSettings:
          GoogleCloudDialogflowCxV3AdvancedSettingsResponse.fromMap(
            (map['advancedSettings'] as Map).cast<String, dynamic>(),
          ),
      displayName: map['displayName'] as String,
      entryFulfillment: GoogleCloudDialogflowCxV3FulfillmentResponse.fromMap(
        (map['entryFulfillment'] as Map).cast<String, dynamic>(),
      ),
      eventHandlers:
          pulumi
              .Input.decodeList<GoogleCloudDialogflowCxV3EventHandlerResponse>(
            map['eventHandlers'],
            (value) => GoogleCloudDialogflowCxV3EventHandlerResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      form: GoogleCloudDialogflowCxV3FormResponse.fromMap(
        (map['form'] as Map).cast<String, dynamic>(),
      ),
      knowledgeConnectorSettings:
          GoogleCloudDialogflowCxV3KnowledgeConnectorSettingsResponse.fromMap(
            (map['knowledgeConnectorSettings'] as Map).cast<String, dynamic>(),
          ),
      name: map['name'] as String,
      transitionRouteGroups: (map['transitionRouteGroups'] as List)
          .cast<String>(),
      transitionRoutes:
          pulumi.Input.decodeList<
            GoogleCloudDialogflowCxV3TransitionRouteResponse
          >(
            map['transitionRoutes'],
            (value) => GoogleCloudDialogflowCxV3TransitionRouteResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}

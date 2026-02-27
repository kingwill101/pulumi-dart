// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3beta1_advanced_settings.dart';
import 'google_cloud_dialogflow_cx_v3beta1_event_handler.dart';
import 'google_cloud_dialogflow_cx_v3beta1_form.dart';
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment.dart';
import 'google_cloud_dialogflow_cx_v3beta1_knowledge_connector_settings.dart';
import 'google_cloud_dialogflow_cx_v3beta1_transition_route.dart';

/// A Dialogflow CX conversation (session) can be described and visualized as a state machine. The states of a CX session are represented by pages. For each flow, you define many pages, where your combined pages can handle a complete conversation on the topics the flow is designed for. At any given moment, exactly one page is the current page, the current page is considered active, and the flow associated with that page is considered active. Every flow has a special start page. When a flow initially becomes active, the start page page becomes the current page. For each conversational turn, the current page will either stay the same or transition to another page. You configure each page to collect information from the end-user that is relevant for the conversational state represented by the page. For more information, see the [Page guide](https://cloud.google.com/dialogflow/cx/docs/concept/page).
class GoogleCloudDialogflowCxV3beta1Page {
  /// Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final GoogleCloudDialogflowCxV3beta1AdvancedSettings? advancedSettings;

  /// The human-readable name of the page, unique within the flow.
  final String displayName;

  /// The fulfillment to call when the session is entering the page.
  final GoogleCloudDialogflowCxV3beta1Fulfillment? entryFulfillment;

  /// Handlers associated with the page to handle events such as webhook errors, no match or no input.
  final List<GoogleCloudDialogflowCxV3beta1EventHandler>? eventHandlers;

  /// The form associated with the page, used for collecting parameters relevant to the page.
  final GoogleCloudDialogflowCxV3beta1Form? form;

  /// Optional. Knowledge connector configuration.
  final GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings?
      knowledgeConnectorSettings;

  /// The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  final String? name;

  /// Ordered list of `TransitionRouteGroups` added to the page. Transition route groups must be unique within a page. If the page links both flow-level transition route groups and agent-level transition route groups, the flow-level ones will have higher priority and will be put before the agent-level ones. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -> page's transition route group -> flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final List<String>? transitionRouteGroups;

  /// A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  final List<GoogleCloudDialogflowCxV3beta1TransitionRoute>? transitionRoutes;

  GoogleCloudDialogflowCxV3beta1Page({
    this.advancedSettings,
    required this.displayName,
    this.entryFulfillment,
    this.eventHandlers,
    this.form,
    this.knowledgeConnectorSettings,
    this.name,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedSettingsValue = advancedSettings;
    if (advancedSettingsValue != null) {
      map['advancedSettings'] = advancedSettingsValue.toMap();
    }
    map['displayName'] = displayName;
    final entryFulfillmentValue = entryFulfillment;
    if (entryFulfillmentValue != null) {
      map['entryFulfillment'] = entryFulfillmentValue.toMap();
    }
    final eventHandlersValue = eventHandlers;
    if (eventHandlersValue != null) {
      map['eventHandlers'] = Input.encodeList<
          GoogleCloudDialogflowCxV3beta1EventHandler,
          Map<String, dynamic>>(eventHandlersValue, (value) => value.toMap());
    }
    final formValue = form;
    if (formValue != null) {
      map['form'] = formValue.toMap();
    }
    final knowledgeConnectorSettingsValue = knowledgeConnectorSettings;
    if (knowledgeConnectorSettingsValue != null) {
      map['knowledgeConnectorSettings'] =
          knowledgeConnectorSettingsValue.toMap();
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final transitionRouteGroupsValue = transitionRouteGroups;
    if (transitionRouteGroupsValue != null) {
      map['transitionRouteGroups'] = transitionRouteGroupsValue;
    }
    final transitionRoutesValue = transitionRoutes;
    if (transitionRoutesValue != null) {
      map['transitionRoutes'] = Input.encodeList<
              GoogleCloudDialogflowCxV3beta1TransitionRoute,
              Map<String, dynamic>>(
          transitionRoutesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1Page.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1Page(
      advancedSettings: map['advancedSettings'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1AdvancedSettings.fromMap(
              (map['advancedSettings'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      entryFulfillment: map['entryFulfillment'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1Fulfillment.fromMap(
              (map['entryFulfillment'] as Map).cast<String, dynamic>()),
      eventHandlers: map['eventHandlers'] == null
          ? null
          : Input.decodeList<GoogleCloudDialogflowCxV3beta1EventHandler>(
              map['eventHandlers'],
              (value) => GoogleCloudDialogflowCxV3beta1EventHandler.fromMap(
                  (value as Map).cast<String, dynamic>())),
      form: map['form'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1Form.fromMap(
              (map['form'] as Map).cast<String, dynamic>()),
      knowledgeConnectorSettings: map['knowledgeConnectorSettings'] == null
          ? null
          : GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings.fromMap(
              (map['knowledgeConnectorSettings'] as Map)
                  .cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      transitionRouteGroups: map['transitionRouteGroups'] == null
          ? null
          : (map['transitionRouteGroups'] as List).cast<String>(),
      transitionRoutes: map['transitionRoutes'] == null
          ? null
          : Input.decodeList<GoogleCloudDialogflowCxV3beta1TransitionRoute>(
              map['transitionRoutes'],
              (value) => GoogleCloudDialogflowCxV3beta1TransitionRoute.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

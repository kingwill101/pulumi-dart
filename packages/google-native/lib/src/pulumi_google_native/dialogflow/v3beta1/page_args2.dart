// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3beta1_advanced_settings.dart';
import 'google_cloud_dialogflow_cx_v3beta1_event_handler.dart';
import 'google_cloud_dialogflow_cx_v3beta1_form.dart';
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment.dart';
import 'google_cloud_dialogflow_cx_v3beta1_knowledge_connector_settings.dart';
import 'google_cloud_dialogflow_cx_v3beta1_transition_route.dart';

/// The set of arguments for Page.
class PageArgs2 {
  /// Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final Input<GoogleCloudDialogflowCxV3beta1AdvancedSettings>? advancedSettings;
  final Input<String> agentId;

  /// The human-readable name of the page, unique within the flow.
  final Input<String> displayName;

  /// The fulfillment to call when the session is entering the page.
  final Input<GoogleCloudDialogflowCxV3beta1Fulfillment>? entryFulfillment;

  /// Handlers associated with the page to handle events such as webhook errors, no match or no input.
  final Input<List<GoogleCloudDialogflowCxV3beta1EventHandler>>? eventHandlers;
  final Input<String> flowId;

  /// The form associated with the page, used for collecting parameters relevant to the page.
  final Input<GoogleCloudDialogflowCxV3beta1Form>? form;

  /// Optional. Knowledge connector configuration.
  final Input<GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings>?
      knowledgeConnectorSettings;

  /// The language of the following fields in `page`: * `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final Input<String>? languageCode;
  final Input<String>? location;

  /// The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  final Input<String>? name;
  final Input<String>? project;

  /// Ordered list of `TransitionRouteGroups` added to the page. Transition route groups must be unique within a page. If the page links both flow-level transition route groups and agent-level transition route groups, the flow-level ones will have higher priority and will be put before the agent-level ones. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -> page's transition route group -> flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final Input<List<String>>? transitionRouteGroups;

  /// A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  final Input<List<GoogleCloudDialogflowCxV3beta1TransitionRoute>>?
      transitionRoutes;

  PageArgs2({
    this.advancedSettings,
    required this.agentId,
    required this.displayName,
    this.entryFulfillment,
    this.eventHandlers,
    required this.flowId,
    this.form,
    this.knowledgeConnectorSettings,
    this.languageCode,
    this.location,
    this.name,
    this.project,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedSettingsValue = advancedSettings;
    if (advancedSettingsValue != null) {
      map['advancedSettings'] = Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3beta1AdvancedSettings,
              Map<String, dynamic>>(
          advancedSettingsValue, (value) => value.toMap());
    }
    map['agentId'] = agentId;
    map['displayName'] = displayName;
    final entryFulfillmentValue = entryFulfillment;
    if (entryFulfillmentValue != null) {
      map['entryFulfillment'] = Input.mapOptionalInputValue<
              GoogleCloudDialogflowCxV3beta1Fulfillment, Map<String, dynamic>>(
          entryFulfillmentValue, (value) => value.toMap());
    }
    final eventHandlersValue = eventHandlers;
    if (eventHandlersValue != null) {
      map['eventHandlers'] = Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3beta1EventHandler>,
              List<Map<String, dynamic>>>(
          eventHandlersValue,
          (value) => Input.encodeList<
              GoogleCloudDialogflowCxV3beta1EventHandler,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['flowId'] = flowId;
    final formValue = form;
    if (formValue != null) {
      map['form'] = Input.mapOptionalInputValue<
          GoogleCloudDialogflowCxV3beta1Form,
          Map<String, dynamic>>(formValue, (value) => value.toMap());
    }
    final knowledgeConnectorSettingsValue = knowledgeConnectorSettings;
    if (knowledgeConnectorSettingsValue != null) {
      map['knowledgeConnectorSettings'] = Input.mapOptionalInputValue<
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
              List<GoogleCloudDialogflowCxV3beta1TransitionRoute>,
              List<Map<String, dynamic>>>(
          transitionRoutesValue,
          (value) => Input.encodeList<
              GoogleCloudDialogflowCxV3beta1TransitionRoute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory PageArgs2.fromMap(Map<String, dynamic> map) {
    return PageArgs2(
      advancedSettings:
          Input.asOptionalInput<GoogleCloudDialogflowCxV3beta1AdvancedSettings>(
              map['advancedSettings']),
      agentId: Input.asInput<String>(map['agentId']),
      displayName: Input.asInput<String>(map['displayName']),
      entryFulfillment:
          Input.asOptionalInput<GoogleCloudDialogflowCxV3beta1Fulfillment>(
              map['entryFulfillment']),
      eventHandlers: Input.asOptionalInput<
              List<GoogleCloudDialogflowCxV3beta1EventHandler>>(
          map['eventHandlers']),
      flowId: Input.asInput<String>(map['flowId']),
      form: Input.asOptionalInput<GoogleCloudDialogflowCxV3beta1Form>(
          map['form']),
      knowledgeConnectorSettings: Input.asOptionalInput<
              GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings>(
          map['knowledgeConnectorSettings']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      transitionRouteGroups:
          Input.asOptionalInput<List<String>>(map['transitionRouteGroups']),
      transitionRoutes: Input.asOptionalInput<
              List<GoogleCloudDialogflowCxV3beta1TransitionRoute>>(
          map['transitionRoutes']),
    );
  }
}

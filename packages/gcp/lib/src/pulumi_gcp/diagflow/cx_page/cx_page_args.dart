// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_page_advanced_settings/cx_page_advanced_settings.dart';
import '../cx_page_entry_fulfillment/cx_page_entry_fulfillment.dart';
import '../cx_page_event_handler/cx_page_event_handler.dart';
import '../cx_page_form/cx_page_form.dart';
import '../cx_page_knowledge_connector_settings/cx_page_knowledge_connector_settings.dart';
import '../cx_page_transition_route/cx_page_transition_route.dart';

/// The set of arguments for CxPage.
class CxPageArgs {
  /// Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
  /// Structure is documented below.
  final pulumi.Input<CxPageAdvancedSettings>? advancedSettings;

  /// The human-readable name of the page, unique within the agent.
  final pulumi.Input<String> displayName;

  /// The fulfillment to call when the session is entering the page.
  /// Structure is documented below.
  final pulumi.Input<CxPageEntryFulfillment>? entryFulfillment;

  /// Handlers associated with the page to handle events such as webhook errors, no match or no input.
  /// Structure is documented below.
  final pulumi.Input<List<CxPageEventHandler>>? eventHandlers;

  /// The form associated with the page, used for collecting parameters relevant to the page.
  /// Structure is documented below.
  final pulumi.Input<CxPageForm>? form;

  /// Knowledge connector configuration.
  /// Structure is documented below.
  final pulumi.Input<CxPageKnowledgeConnectorSettings>?
      knowledgeConnectorSettings;

  /// The language of the following fields in page:
  /// Page.entry_fulfillment.messages
  /// Page.entry_fulfillment.conditional_cases
  /// Page.event_handlers.trigger_fulfillment.messages
  /// Page.event_handlers.trigger_fulfillment.conditional_cases
  /// Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages
  /// Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases
  /// Page.form.parameters.fill_behavior.reprompt_event_handlers.messages
  /// Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases
  /// Page.transition_routes.trigger_fulfillment.messages
  /// Page.transition_routes.trigger_fulfillment.conditional_cases
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;

  /// The flow to create a page for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  final pulumi.Input<String>? parent;

  /// Ordered list of TransitionRouteGroups associated with the page. Transition route groups must be unique within a page.
  /// If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route > page's transition route group > flow's transition routes.
  /// If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence.
  /// Format:projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/transitionRouteGroups/<TransitionRouteGroup ID>.
  final pulumi.Input<List<String>>? transitionRouteGroups;

  /// A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow.
  /// When we are in a certain page, the TransitionRoutes are evalauted in the following order:
  /// TransitionRoutes defined in the page with intent specified.
  /// TransitionRoutes defined in the transition route groups with intent specified.
  /// TransitionRoutes defined in flow with intent specified.
  /// TransitionRoutes defined in the transition route groups with intent specified.
  /// TransitionRoutes defined in the page with only condition specified.
  /// TransitionRoutes defined in the transition route groups with only condition specified.
  /// Structure is documented below.
  final pulumi.Input<List<CxPageTransitionRoute>>? transitionRoutes;

  CxPageArgs({
    this.advancedSettings,
    required this.displayName,
    this.entryFulfillment,
    this.eventHandlers,
    this.form,
    this.knowledgeConnectorSettings,
    this.languageCode,
    this.parent,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedSettingsValue = advancedSettings;
    if (advancedSettingsValue != null) {
      map['advancedSettings'] = pulumi.Input.mapOptionalInputValue<
              CxPageAdvancedSettings, Map<String, dynamic>>(
          advancedSettingsValue, (value) => value.toMap());
    }
    map['displayName'] = displayName;
    final entryFulfillmentValue = entryFulfillment;
    if (entryFulfillmentValue != null) {
      map['entryFulfillment'] = pulumi.Input.mapOptionalInputValue<
              CxPageEntryFulfillment, Map<String, dynamic>>(
          entryFulfillmentValue, (value) => value.toMap());
    }
    final eventHandlersValue = eventHandlers;
    if (eventHandlersValue != null) {
      map['eventHandlers'] = pulumi.Input.mapOptionalInputValue<
              List<CxPageEventHandler>, List<Map<String, dynamic>>>(
          eventHandlersValue,
          (value) =>
              pulumi.Input.encodeList<CxPageEventHandler, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final formValue = form;
    if (formValue != null) {
      map['form'] =
          pulumi.Input.mapOptionalInputValue<CxPageForm, Map<String, dynamic>>(
              formValue, (value) => value.toMap());
    }
    final knowledgeConnectorSettingsValue = knowledgeConnectorSettings;
    if (knowledgeConnectorSettingsValue != null) {
      map['knowledgeConnectorSettings'] = pulumi.Input.mapOptionalInputValue<
              CxPageKnowledgeConnectorSettings, Map<String, dynamic>>(
          knowledgeConnectorSettingsValue, (value) => value.toMap());
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final transitionRouteGroupsValue = transitionRouteGroups;
    if (transitionRouteGroupsValue != null) {
      map['transitionRouteGroups'] = transitionRouteGroupsValue;
    }
    final transitionRoutesValue = transitionRoutes;
    if (transitionRoutesValue != null) {
      map['transitionRoutes'] = pulumi.Input.mapOptionalInputValue<
              List<CxPageTransitionRoute>, List<Map<String, dynamic>>>(
          transitionRoutesValue,
          (value) => pulumi.Input.encodeList<CxPageTransitionRoute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory CxPageArgs.fromMap(Map<String, dynamic> map) {
    return CxPageArgs(
      advancedSettings: pulumi.Input.asOptionalInput<CxPageAdvancedSettings>(
          map['advancedSettings']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      entryFulfillment: pulumi.Input.asOptionalInput<CxPageEntryFulfillment>(
          map['entryFulfillment']),
      eventHandlers: pulumi.Input.asOptionalInput<List<CxPageEventHandler>>(
          map['eventHandlers']),
      form: pulumi.Input.asOptionalInput<CxPageForm>(map['form']),
      knowledgeConnectorSettings:
          pulumi.Input.asOptionalInput<CxPageKnowledgeConnectorSettings>(
              map['knowledgeConnectorSettings']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
      transitionRouteGroups: pulumi.Input.asOptionalInput<List<String>>(
          map['transitionRouteGroups']),
      transitionRoutes:
          pulumi.Input.asOptionalInput<List<CxPageTransitionRoute>>(
              map['transitionRoutes']),
    );
  }
}

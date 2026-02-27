// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_flow_advanced_settings/cx_flow_advanced_settings.dart';
import '../cx_flow_event_handler/cx_flow_event_handler.dart';
import '../cx_flow_knowledge_connector_settings/cx_flow_knowledge_connector_settings.dart';
import '../cx_flow_nlu_settings/cx_flow_nlu_settings.dart';
import '../cx_flow_transition_route/cx_flow_transition_route.dart';

/// The set of arguments for CxFlow.
class CxFlowArgs {
  /// Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
  /// Structure is documented below.
  final pulumi.Input<CxFlowAdvancedSettings>? advancedSettings;

  /// The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String>? description;

  /// The human-readable name of the flow.
  final pulumi.Input<String> displayName;

  /// A flow's event handlers serve two purposes:
  /// They are responsible for handling events (e.g. no match, webhook errors) in the flow.
  /// They are inherited by every page's [event handlers][Page.event_handlers], which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow.
  /// Unlike transitionRoutes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  /// Structure is documented below.
  final pulumi.Input<List<CxFlowEventHandler>>? eventHandlers;

  /// Marks this as the [Default Start Flow](https://cloud.google.com/dialogflow/cx/docs/concept/flow#start) for an agent. When you create an agent, the Default Start Flow is created automatically.
  /// The Default Start Flow cannot be deleted; deleting the `gcp.diagflow.CxFlow` resource does nothing to the underlying GCP resources.
  ///
  /// > Avoid having multiple `gcp.diagflow.CxFlow` resources linked to the same agent with `is_default_start_flow = true` because they will compete to control a single Default Start Flow resource in GCP.
  final pulumi.Input<bool>? isDefaultStartFlow;

  /// Knowledge connector configuration.
  /// Structure is documented below.
  final pulumi.Input<CxFlowKnowledgeConnectorSettings>?
      knowledgeConnectorSettings;

  /// The language of the following fields in flow:
  /// Flow.event_handlers.trigger_fulfillment.messages
  /// Flow.event_handlers.trigger_fulfillment.conditional_cases
  /// Flow.transition_routes.trigger_fulfillment.messages
  /// Flow.transition_routes.trigger_fulfillment.conditional_cases
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;

  /// NLU related settings of the flow.
  /// Structure is documented below.
  final pulumi.Input<CxFlowNluSettings>? nluSettings;

  /// The agent to create a flow for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  final pulumi.Input<String>? parent;

  /// A flow's transition route group serve two purposes:
  /// They are responsible for matching the user's first utterances in the flow.
  /// They are inherited by every page's [transition route groups][Page.transition_route_groups]. Transition route groups defined in the page have higher priority than those defined in the flow.
  /// Format:projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/transitionRouteGroups/<TransitionRouteGroup ID>.
  final pulumi.Input<List<String>>? transitionRouteGroups;

  /// A flow's transition routes serve two purposes:
  /// They are responsible for matching the user's first utterances in the flow.
  /// They are inherited by every page's [transition routes][Page.transition_routes] and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow.
  /// TransitionRoutes are evalauted in the following order:
  /// TransitionRoutes with intent specified.
  /// TransitionRoutes with only condition specified.
  /// TransitionRoutes with intent specified are inherited by pages in the flow.
  /// Structure is documented below.
  final pulumi.Input<List<CxFlowTransitionRoute>>? transitionRoutes;

  CxFlowArgs({
    this.advancedSettings,
    this.description,
    required this.displayName,
    this.eventHandlers,
    this.isDefaultStartFlow,
    this.knowledgeConnectorSettings,
    this.languageCode,
    this.nluSettings,
    this.parent,
    this.transitionRouteGroups,
    this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedSettingsValue = advancedSettings;
    if (advancedSettingsValue != null) {
      map['advancedSettings'] = pulumi.Input.mapOptionalInputValue<
              CxFlowAdvancedSettings, Map<String, dynamic>>(
          advancedSettingsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final eventHandlersValue = eventHandlers;
    if (eventHandlersValue != null) {
      map['eventHandlers'] = pulumi.Input.mapOptionalInputValue<
              List<CxFlowEventHandler>, List<Map<String, dynamic>>>(
          eventHandlersValue,
          (value) =>
              pulumi.Input.encodeList<CxFlowEventHandler, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final isDefaultStartFlowValue = isDefaultStartFlow;
    if (isDefaultStartFlowValue != null) {
      map['isDefaultStartFlow'] = isDefaultStartFlowValue;
    }
    final knowledgeConnectorSettingsValue = knowledgeConnectorSettings;
    if (knowledgeConnectorSettingsValue != null) {
      map['knowledgeConnectorSettings'] = pulumi.Input.mapOptionalInputValue<
              CxFlowKnowledgeConnectorSettings, Map<String, dynamic>>(
          knowledgeConnectorSettingsValue, (value) => value.toMap());
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final nluSettingsValue = nluSettings;
    if (nluSettingsValue != null) {
      map['nluSettings'] = pulumi.Input.mapOptionalInputValue<CxFlowNluSettings,
          Map<String, dynamic>>(nluSettingsValue, (value) => value.toMap());
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
              List<CxFlowTransitionRoute>, List<Map<String, dynamic>>>(
          transitionRoutesValue,
          (value) => pulumi.Input.encodeList<CxFlowTransitionRoute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory CxFlowArgs.fromMap(Map<String, dynamic> map) {
    return CxFlowArgs(
      advancedSettings: pulumi.Input.asOptionalInput<CxFlowAdvancedSettings>(
          map['advancedSettings']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      eventHandlers: pulumi.Input.asOptionalInput<List<CxFlowEventHandler>>(
          map['eventHandlers']),
      isDefaultStartFlow:
          pulumi.Input.asOptionalInput<bool>(map['isDefaultStartFlow']),
      knowledgeConnectorSettings:
          pulumi.Input.asOptionalInput<CxFlowKnowledgeConnectorSettings>(
              map['knowledgeConnectorSettings']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      nluSettings:
          pulumi.Input.asOptionalInput<CxFlowNluSettings>(map['nluSettings']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
      transitionRouteGroups: pulumi.Input.asOptionalInput<List<String>>(
          map['transitionRouteGroups']),
      transitionRoutes:
          pulumi.Input.asOptionalInput<List<CxFlowTransitionRoute>>(
              map['transitionRoutes']),
    );
  }
}

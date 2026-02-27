import 'package:pulumi/pulumi.dart';
import '../cx_flow_advanced_settings/cx_flow_advanced_settings.dart';
import '../cx_flow_event_handler/cx_flow_event_handler.dart';
import '../cx_flow_knowledge_connector_settings/cx_flow_knowledge_connector_settings.dart';
import '../cx_flow_nlu_settings/cx_flow_nlu_settings.dart';
import '../cx_flow_transition_route/cx_flow_transition_route.dart';
import 'cx_flow_args.dart';

/// Flows represents the conversation flows when you build your chatbot agent.
///
///
/// To get more information about Flow, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Flow Basic
///
///
///
/// ### Dialogflowcx Flow Full
///
///
///
///
/// ## Import
///
/// Flow can be imported using any of these accepted formats:
///
/// * `{{parent}}/flows/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Flow can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxFlow:CxFlow default {{parent}}/flows/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxFlow:CxFlow default {{parent}}/{{name}}
/// ```
class CxFlow extends CustomResource {
  /// Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
  /// Structure is documented below.
  late final Output<CxFlowAdvancedSettings?> advancedSettings;

  /// The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final Output<String?> description;

  /// The human-readable name of the flow.
  late final Output<String> displayName;

  /// A flow's event handlers serve two purposes:
  /// They are responsible for handling events (e.g. no match, webhook errors) in the flow.
  /// They are inherited by every page's [event handlers][Page.event_handlers], which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow.
  /// Unlike transitionRoutes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  /// Structure is documented below.
  late final Output<List<CxFlowEventHandler>> eventHandlers;

  /// Marks this as the [Default Start Flow](https://cloud.google.com/dialogflow/cx/docs/concept/flow#start) for an agent. When you create an agent, the Default Start Flow is created automatically.
  /// The Default Start Flow cannot be deleted; deleting the `gcp.diagflow.CxFlow` resource does nothing to the underlying GCP resources.
  ///
  /// > Avoid having multiple `gcp.diagflow.CxFlow` resources linked to the same agent with `is_default_start_flow = true` because they will compete to control a single Default Start Flow resource in GCP.
  late final Output<bool?> isDefaultStartFlow;

  /// Knowledge connector configuration.
  /// Structure is documented below.
  late final Output<CxFlowKnowledgeConnectorSettings?>
      knowledgeConnectorSettings;

  /// The language of the following fields in flow:
  /// Flow.event_handlers.trigger_fulfillment.messages
  /// Flow.event_handlers.trigger_fulfillment.conditional_cases
  /// Flow.transition_routes.trigger_fulfillment.messages
  /// Flow.transition_routes.trigger_fulfillment.conditional_cases
  /// If not specified, the agent's default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used.
  late final Output<String?> languageCode;

  /// The unique identifier of the flow.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  late final Output<String> name;

  /// NLU related settings of the flow.
  /// Structure is documented below.
  late final Output<CxFlowNluSettings?> nluSettings;

  /// The agent to create a flow for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final Output<String?> parent;

  /// A flow's transition route group serve two purposes:
  /// They are responsible for matching the user's first utterances in the flow.
  /// They are inherited by every page's [transition route groups][Page.transition_route_groups]. Transition route groups defined in the page have higher priority than those defined in the flow.
  /// Format:projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/transitionRouteGroups/<TransitionRouteGroup ID>.
  late final Output<List<String>?> transitionRouteGroups;

  /// A flow's transition routes serve two purposes:
  /// They are responsible for matching the user's first utterances in the flow.
  /// They are inherited by every page's [transition routes][Page.transition_routes] and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow.
  /// TransitionRoutes are evalauted in the following order:
  /// TransitionRoutes with intent specified.
  /// TransitionRoutes with only condition specified.
  /// TransitionRoutes with intent specified are inherited by pages in the flow.
  /// Structure is documented below.
  late final Output<List<CxFlowTransitionRoute>?> transitionRoutes;

  CxFlow(
    String name, {
    CxFlowArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxFlow:CxFlow',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.advancedSettings =
        registerOutput<CxFlowAdvancedSettings?>('advancedSettings');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.eventHandlers =
        registerOutput<List<CxFlowEventHandler>>('eventHandlers');
    this.isDefaultStartFlow = registerOutput<bool?>('isDefaultStartFlow');
    this.knowledgeConnectorSettings =
        registerOutput<CxFlowKnowledgeConnectorSettings?>(
            'knowledgeConnectorSettings');
    this.languageCode = registerOutput<String?>('languageCode');
    this.name = registerOutput<String>('name');
    this.nluSettings = registerOutput<CxFlowNluSettings?>('nluSettings');
    this.parent = registerOutput<String?>('parent');
    this.transitionRouteGroups =
        registerOutput<List<String>?>('transitionRouteGroups');
    this.transitionRoutes =
        registerOutput<List<CxFlowTransitionRoute>?>('transitionRoutes');
  }
}

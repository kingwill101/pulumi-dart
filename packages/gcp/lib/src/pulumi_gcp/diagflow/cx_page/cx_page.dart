import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_page_advanced_settings/cx_page_advanced_settings.dart';
import '../cx_page_entry_fulfillment/cx_page_entry_fulfillment.dart';
import '../cx_page_event_handler/cx_page_event_handler.dart';
import '../cx_page_form/cx_page_form.dart';
import '../cx_page_knowledge_connector_settings/cx_page_knowledge_connector_settings.dart';
import '../cx_page_transition_route/cx_page_transition_route.dart';
import 'cx_page_args.dart';

/// A Dialogflow CX conversation (session) can be described and visualized as a state machine. The states of a CX session are represented by pages.
///
///
/// To get more information about Page, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.pages)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Page Full
///
///
///
///
/// ## Import
///
/// Page can be imported using any of these accepted formats:
///
/// * `{{parent}}/pages/{{name}}`
///
/// * `{{parent}}/{{name}}`
///
/// When using the `pulumi import` command, Page can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxPage:CxPage default {{parent}}/pages/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxPage:CxPage default {{parent}}/{{name}}
/// ```
class CxPage extends pulumi.CustomResource {
  /// Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
  /// Structure is documented below.
  late final pulumi.Output<CxPageAdvancedSettings?> advancedSettings;

  /// The human-readable name of the page, unique within the agent.
  late final pulumi.Output<String> displayName;

  /// The fulfillment to call when the session is entering the page.
  /// Structure is documented below.
  late final pulumi.Output<CxPageEntryFulfillment?> entryFulfillment;

  /// Handlers associated with the page to handle events such as webhook errors, no match or no input.
  /// Structure is documented below.
  late final pulumi.Output<List<CxPageEventHandler>?> eventHandlers;

  /// The form associated with the page, used for collecting parameters relevant to the page.
  /// Structure is documented below.
  late final pulumi.Output<CxPageForm?> form;

  /// Knowledge connector configuration.
  /// Structure is documented below.
  late final pulumi.Output<CxPageKnowledgeConnectorSettings?>
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
  late final pulumi.Output<String?> languageCode;

  /// The unique identifier of the page.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
  late final pulumi.Output<String> name;

  /// The flow to create a page for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>.
  late final pulumi.Output<String?> parent;

  /// Ordered list of TransitionRouteGroups associated with the page. Transition route groups must be unique within a page.
  /// If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route > page's transition route group > flow's transition routes.
  /// If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence.
  /// Format:projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/transitionRouteGroups/<TransitionRouteGroup ID>.
  late final pulumi.Output<List<String>?> transitionRouteGroups;

  /// A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow.
  /// When we are in a certain page, the TransitionRoutes are evalauted in the following order:
  /// TransitionRoutes defined in the page with intent specified.
  /// TransitionRoutes defined in the transition route groups with intent specified.
  /// TransitionRoutes defined in flow with intent specified.
  /// TransitionRoutes defined in the transition route groups with intent specified.
  /// TransitionRoutes defined in the page with only condition specified.
  /// TransitionRoutes defined in the transition route groups with only condition specified.
  /// Structure is documented below.
  late final pulumi.Output<List<CxPageTransitionRoute>?> transitionRoutes;

  CxPage(
    String name, {
    CxPageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxPage:CxPage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.advancedSettings =
        registerOutput<CxPageAdvancedSettings?>('advancedSettings');
    this.displayName = registerOutput<String>('displayName');
    this.entryFulfillment =
        registerOutput<CxPageEntryFulfillment?>('entryFulfillment');
    this.eventHandlers =
        registerOutput<List<CxPageEventHandler>?>('eventHandlers');
    this.form = registerOutput<CxPageForm?>('form');
    this.knowledgeConnectorSettings =
        registerOutput<CxPageKnowledgeConnectorSettings?>(
            'knowledgeConnectorSettings');
    this.languageCode = registerOutput<String?>('languageCode');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.transitionRouteGroups =
        registerOutput<List<String>?>('transitionRouteGroups');
    this.transitionRoutes =
        registerOutput<List<CxPageTransitionRoute>?>('transitionRoutes');
  }
}

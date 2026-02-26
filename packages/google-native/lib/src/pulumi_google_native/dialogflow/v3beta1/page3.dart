import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3beta1_advanced_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_event_handler_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_form_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_knowledge_connector_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_transition_route_response.dart';
import 'page_args2.dart';

/// Creates a page in the specified flow.
class Page3 extends CustomResource {
  /// Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  late final Output<GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse>
      advancedSettings;
  late final Output<String> agentId;

  /// The human-readable name of the page, unique within the flow.
  late final Output<String> displayName;

  /// The fulfillment to call when the session is entering the page.
  late final Output<GoogleCloudDialogflowCxV3beta1FulfillmentResponse>
      entryFulfillment;

  /// Handlers associated with the page to handle events such as webhook errors, no match or no input.
  late final Output<List<GoogleCloudDialogflowCxV3beta1EventHandlerResponse>>
      eventHandlers;
  late final Output<String> flowId;

  /// The form associated with the page, used for collecting parameters relevant to the page.
  late final Output<GoogleCloudDialogflowCxV3beta1FormResponse> form;

  /// Optional. Knowledge connector configuration.
  late final Output<
          GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse>
      knowledgeConnectorSettings;

  /// The language of the following fields in `page`: * `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  late final Output<String?> languageCode;
  late final Output<String> location;

  /// The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  late final Output<String> name;
  late final Output<String> project;

  /// Ordered list of `TransitionRouteGroups` added to the page. Transition route groups must be unique within a page. If the page links both flow-level transition route groups and agent-level transition route groups, the flow-level ones will have higher priority and will be put before the agent-level ones. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -> page's transition route group -> flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  late final Output<List<String>> transitionRouteGroups;

  /// A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  late final Output<List<GoogleCloudDialogflowCxV3beta1TransitionRouteResponse>>
      transitionRoutes;

  Page3(
    String name, {
    PageArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3beta1:Page',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.advancedSettings = Output.createUnknown<
        GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse>();
    this.agentId = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.entryFulfillment = Output.createUnknown<
        GoogleCloudDialogflowCxV3beta1FulfillmentResponse>();
    this.eventHandlers = Output.createUnknown<
        List<GoogleCloudDialogflowCxV3beta1EventHandlerResponse>>();
    this.flowId = Output.createUnknown<String>();
    this.form =
        Output.createUnknown<GoogleCloudDialogflowCxV3beta1FormResponse>();
    this.knowledgeConnectorSettings = Output.createUnknown<
        GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse>();
    this.languageCode = Output.createUnknown<String?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.transitionRouteGroups = Output.createUnknown<List<String>>();
    this.transitionRoutes = Output.createUnknown<
        List<GoogleCloudDialogflowCxV3beta1TransitionRouteResponse>>();
  }
}

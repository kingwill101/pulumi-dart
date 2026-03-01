import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_advanced_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_event_handler_response.dart';
import 'google_cloud_dialogflow_cx_v3_form_response.dart';
import 'google_cloud_dialogflow_cx_v3_fulfillment_response.dart';
import 'google_cloud_dialogflow_cx_v3_knowledge_connector_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3_transition_route_response.dart';
import 'page_args.dart';

/// Creates a page in the specified flow. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
class Page extends pulumi.CustomResource {
  /// Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  late final pulumi.Output<GoogleCloudDialogflowCxV3AdvancedSettingsResponse>
  advancedSettings;
  late final pulumi.Output<String> agentId;

  /// The human-readable name of the page, unique within the flow.
  late final pulumi.Output<String> displayName;

  /// The fulfillment to call when the session is entering the page.
  late final pulumi.Output<GoogleCloudDialogflowCxV3FulfillmentResponse>
  entryFulfillment;

  /// Handlers associated with the page to handle events such as webhook errors, no match or no input.
  late final pulumi.Output<List<GoogleCloudDialogflowCxV3EventHandlerResponse>>
  eventHandlers;
  late final pulumi.Output<String> flowId;

  /// The form associated with the page, used for collecting parameters relevant to the page.
  late final pulumi.Output<GoogleCloudDialogflowCxV3FormResponse> form;

  /// Optional. Knowledge connector configuration.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3KnowledgeConnectorSettingsResponse
  >
  knowledgeConnectorSettings;

  /// The language of the following fields in `page`: * `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  late final pulumi.Output<String?> languageCode;
  late final pulumi.Output<String> location;

  /// The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Ordered list of `TransitionRouteGroups` added to the page. Transition route groups must be unique within a page. If the page links both flow-level transition route groups and agent-level transition route groups, the flow-level ones will have higher priority and will be put before the agent-level ones. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -> page's transition route group -> flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  late final pulumi.Output<List<String>> transitionRouteGroups;

  /// A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  late final pulumi.Output<
    List<GoogleCloudDialogflowCxV3TransitionRouteResponse>
  >
  transitionRoutes;

  /// Creates a new [Page].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Page]. {@macro pulumi_dialogflow_v3_page_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Page(String name, {PageArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:dialogflow/v3:Page',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.advancedSettings =
        registerOutput<GoogleCloudDialogflowCxV3AdvancedSettingsResponse>(
          'advancedSettings',
        );
    this.agentId = registerOutput<String>('agentId');
    this.displayName = registerOutput<String>('displayName');
    this.entryFulfillment =
        registerOutput<GoogleCloudDialogflowCxV3FulfillmentResponse>(
          'entryFulfillment',
        );
    this.eventHandlers =
        registerOutput<List<GoogleCloudDialogflowCxV3EventHandlerResponse>>(
          'eventHandlers',
        );
    this.flowId = registerOutput<String>('flowId');
    this.form = registerOutput<GoogleCloudDialogflowCxV3FormResponse>('form');
    this.knowledgeConnectorSettings =
        registerOutput<
          GoogleCloudDialogflowCxV3KnowledgeConnectorSettingsResponse
        >('knowledgeConnectorSettings');
    this.languageCode = registerOutput<String?>('languageCode');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.transitionRouteGroups = registerOutput<List<String>>(
      'transitionRouteGroups',
    );
    this.transitionRoutes =
        registerOutput<List<GoogleCloudDialogflowCxV3TransitionRouteResponse>>(
          'transitionRoutes',
        );
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_dialogflow_v3beta1_args.dart';
import 'google_cloud_dialogflow_cx_v3beta1_advanced_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_event_handler_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_knowledge_connector_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_nlu_settings_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_transition_route_response.dart';

/// Creates a flow in the specified agent. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
class FlowDialogflowV3beta1 extends pulumi.CustomResource {
  /// Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse
  >
  advancedSettings;
  late final pulumi.Output<String> agentId;

  /// The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected.
  late final pulumi.Output<String> description;

  /// The human-readable name of the flow.
  late final pulumi.Output<String> displayName;

  /// A flow's event handlers serve two purposes: * They are responsible for handling events (e.g. no match, webhook errors) in the flow. * They are inherited by every page's event handlers, which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow. Unlike transition_routes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored.
  late final pulumi.Output<
    List<GoogleCloudDialogflowCxV3beta1EventHandlerResponse>
  >
  eventHandlers;

  /// Optional. Knowledge connector configuration.
  late final pulumi.Output<
    GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse
  >
  knowledgeConnectorSettings;

  /// The language of the following fields in `flow`: * `Flow.event_handlers.trigger_fulfillment.messages` * `Flow.event_handlers.trigger_fulfillment.conditional_cases` * `Flow.transition_routes.trigger_fulfillment.messages` * `Flow.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  late final pulumi.Output<String?> languageCode;
  late final pulumi.Output<String> location;

  /// The unique identifier of the flow. Format: `projects//locations//agents//flows/`.
  late final pulumi.Output<String> name;

  /// NLU related settings of the flow.
  late final pulumi.Output<GoogleCloudDialogflowCxV3beta1NluSettingsResponse>
  nluSettings;
  late final pulumi.Output<String> project;

  /// A flow's transition route group serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition route groups. Transition route groups defined in the page have higher priority than those defined in the flow. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  late final pulumi.Output<List<String>> transitionRouteGroups;

  /// A flow's transition routes serve two purposes: * They are responsible for matching the user's first utterances in the flow. * They are inherited by every page's transition routes and can support use cases such as the user saying "help" or "can I talk to a human?", which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow. TransitionRoutes are evalauted in the following order: * TransitionRoutes with intent specified. * TransitionRoutes with only condition specified. TransitionRoutes with intent specified are inherited by pages in the flow.
  late final pulumi.Output<
    List<GoogleCloudDialogflowCxV3beta1TransitionRouteResponse>
  >
  transitionRoutes;

  /// Creates a new [FlowDialogflowV3beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlowDialogflowV3beta1]. {@macro pulumi_dialogflow_v3beta1_flow_dialogflow_v3beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlowDialogflowV3beta1(
    String name, {
    FlowDialogflowV3beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dialogflow/v3beta1:Flow',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.advancedSettings =
        registerOutput<GoogleCloudDialogflowCxV3beta1AdvancedSettingsResponse>(
          'advancedSettings',
        );
    this.agentId = registerOutput<String>('agentId');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.eventHandlers =
        registerOutput<
          List<GoogleCloudDialogflowCxV3beta1EventHandlerResponse>
        >('eventHandlers');
    this.knowledgeConnectorSettings =
        registerOutput<
          GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettingsResponse
        >('knowledgeConnectorSettings');
    this.languageCode = registerOutput<String?>('languageCode');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.nluSettings =
        registerOutput<GoogleCloudDialogflowCxV3beta1NluSettingsResponse>(
          'nluSettings',
        );
    this.project = registerOutput<String>('project');
    this.transitionRouteGroups = registerOutput<List<String>>(
      'transitionRouteGroups',
    );
    this.transitionRoutes =
        registerOutput<
          List<GoogleCloudDialogflowCxV3beta1TransitionRouteResponse>
        >('transitionRoutes');
  }
}

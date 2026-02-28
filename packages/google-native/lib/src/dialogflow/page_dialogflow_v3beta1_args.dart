// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_advanced_settings.dart';
import 'google_cloud_dialogflow_cx_v3beta1_event_handler.dart';
import 'google_cloud_dialogflow_cx_v3beta1_form.dart';
import 'google_cloud_dialogflow_cx_v3beta1_fulfillment.dart';
import 'google_cloud_dialogflow_cx_v3beta1_knowledge_connector_settings.dart';
import 'google_cloud_dialogflow_cx_v3beta1_transition_route.dart';

/// {@template pulumi_dialogflow_v3beta1_page_dialogflow_v3beta1_args_doc}
/// The set of arguments for Page.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_page_dialogflow_v3beta1_args_doc}
class PageDialogflowV3beta1Args {
  /// Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1AdvancedSettings>? advancedSettings;
  final pulumi.Input<String> agentId;
  /// The human-readable name of the page, unique within the flow.
  final pulumi.Input<String> displayName;
  /// The fulfillment to call when the session is entering the page.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1Fulfillment>? entryFulfillment;
  /// Handlers associated with the page to handle events such as webhook errors, no match or no input.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1EventHandler>>? eventHandlers;
  final pulumi.Input<String> flowId;
  /// The form associated with the page, used for collecting parameters relevant to the page.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1Form>? form;
  /// Optional. Knowledge connector configuration.
  final pulumi.Input<GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings>? knowledgeConnectorSettings;
  /// The language of the following fields in `page`: * `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;
  /// The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Ordered list of `TransitionRouteGroups` added to the page. Transition route groups must be unique within a page. If the page links both flow-level transition route groups and agent-level transition route groups, the flow-level ones will have higher priority and will be put before the agent-level ones. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -> page's transition route group -> flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final pulumi.Input<List<String>>? transitionRouteGroups;
  /// A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3beta1TransitionRoute>>? transitionRoutes;

  /// Creates a new [PageDialogflowV3beta1Args].
  /// [advancedSettings] Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.
  /// [agentId] Required.
  /// [displayName] The human-readable name of the page, unique within the flow.
  /// [entryFulfillment] The fulfillment to call when the session is entering the page.
  /// [eventHandlers] Handlers associated with the page to handle events such as webhook errors, no match or no input.
  /// [flowId] Required.
  /// [form] The form associated with the page, used for collecting parameters relevant to the page.
  /// [knowledgeConnectorSettings] Optional. Knowledge connector configuration.
  /// [languageCode] The language of the following fields in `page`: * `Page.entry_fulfillment.messages` * `Page.entry_fulfillment.conditional_cases` * `Page.event_handlers.trigger_fulfillment.messages` * `Page.event_handlers.trigger_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages` * `Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.messages` * `Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases` * `Page.transition_routes.trigger_fulfillment.messages` * `Page.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  /// [location] Optional.
  /// [name] The unique identifier of the page. Required for the Pages.UpdatePage method. Pages.CreatePage populates the name automatically. Format: `projects//locations//agents//flows//pages/`.
  /// [project] Optional.
  /// [transitionRouteGroups] Ordered list of `TransitionRouteGroups` added to the page. Transition route groups must be unique within a page. If the page links both flow-level transition route groups and agent-level transition route groups, the flow-level ones will have higher priority and will be put before the agent-level ones. * If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page's transition route -> page's transition route group -> flow's transition routes. * If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence. Format:`projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  /// [transitionRoutes] A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow. When we are in a certain page, the TransitionRoutes are evalauted in the following order: * TransitionRoutes defined in the page with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in flow with intent specified. * TransitionRoutes defined in the transition route groups with intent specified. * TransitionRoutes defined in the page with only condition specified. * TransitionRoutes defined in the transition route groups with only condition specified.
  PageDialogflowV3beta1Args({
    GoogleCloudDialogflowCxV3beta1AdvancedSettings? advancedSettings,
    required String agentId,
    required String displayName,
    GoogleCloudDialogflowCxV3beta1Fulfillment? entryFulfillment,
    List<GoogleCloudDialogflowCxV3beta1EventHandler>? eventHandlers,
    required String flowId,
    GoogleCloudDialogflowCxV3beta1Form? form,
    GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings? knowledgeConnectorSettings,
    String? languageCode,
    String? location,
    String? name,
    String? project,
    List<String>? transitionRouteGroups,
    List<GoogleCloudDialogflowCxV3beta1TransitionRoute>? transitionRoutes,
  }) :
      advancedSettings = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3beta1AdvancedSettings>(advancedSettings),
      agentId = pulumi.Input.asInput<String>(agentId),
      displayName = pulumi.Input.asInput<String>(displayName),
      entryFulfillment = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3beta1Fulfillment>(entryFulfillment),
      eventHandlers = pulumi.Input.asOptionalInput<List<GoogleCloudDialogflowCxV3beta1EventHandler>>(eventHandlers),
      flowId = pulumi.Input.asInput<String>(flowId),
      form = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3beta1Form>(form),
      knowledgeConnectorSettings = pulumi.Input.asOptionalInput<GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings>(knowledgeConnectorSettings),
      languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      transitionRouteGroups = pulumi.Input.asOptionalInput<List<String>>(transitionRouteGroups),
      transitionRoutes = pulumi.Input.asOptionalInput<List<GoogleCloudDialogflowCxV3beta1TransitionRoute>>(transitionRoutes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1AdvancedSettings, Map<String, dynamic>>(advancedSettings, (value) => value.toMap()),
      'agentId': agentId,
      'displayName': displayName,
      'entryFulfillment': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1Fulfillment, Map<String, dynamic>>(entryFulfillment, (value) => value.toMap()),
      'eventHandlers': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3beta1EventHandler>, List<Map<String, dynamic>>>(eventHandlers, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1EventHandler, Map<String, dynamic>>(value, (value) => value.toMap())),
      'flowId': flowId,
      'form': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1Form, Map<String, dynamic>>(form, (value) => value.toMap()),
      'knowledgeConnectorSettings': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings, Map<String, dynamic>>(knowledgeConnectorSettings, (value) => value.toMap()),
      'languageCode': ?languageCode,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'transitionRouteGroups': ?transitionRouteGroups,
      'transitionRoutes': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDialogflowCxV3beta1TransitionRoute>, List<Map<String, dynamic>>>(transitionRoutes, (value) => pulumi.Input.encodeList<GoogleCloudDialogflowCxV3beta1TransitionRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PageDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return PageDialogflowV3beta1Args(
      advancedSettings: map['advancedSettings'] == null ? null : GoogleCloudDialogflowCxV3beta1AdvancedSettings.fromMap((map['advancedSettings'] as Map).cast<String, dynamic>()),
      agentId: map['agentId'] as String,
      displayName: map['displayName'] as String,
      entryFulfillment: map['entryFulfillment'] == null ? null : GoogleCloudDialogflowCxV3beta1Fulfillment.fromMap((map['entryFulfillment'] as Map).cast<String, dynamic>()),
      eventHandlers: map['eventHandlers'] == null ? null : pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1EventHandler>(map['eventHandlers'], (value) => GoogleCloudDialogflowCxV3beta1EventHandler.fromMap((value as Map).cast<String, dynamic>())),
      flowId: map['flowId'] as String,
      form: map['form'] == null ? null : GoogleCloudDialogflowCxV3beta1Form.fromMap((map['form'] as Map).cast<String, dynamic>()),
      knowledgeConnectorSettings: map['knowledgeConnectorSettings'] == null ? null : GoogleCloudDialogflowCxV3beta1KnowledgeConnectorSettings.fromMap((map['knowledgeConnectorSettings'] as Map).cast<String, dynamic>()),
      languageCode: map['languageCode'] == null ? null : map['languageCode'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      transitionRouteGroups: map['transitionRouteGroups'] == null ? null : (map['transitionRouteGroups'] as List).cast<String>(),
      transitionRoutes: map['transitionRoutes'] == null ? null : pulumi.Input.decodeList<GoogleCloudDialogflowCxV3beta1TransitionRoute>(map['transitionRoutes'], (value) => GoogleCloudDialogflowCxV3beta1TransitionRoute.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


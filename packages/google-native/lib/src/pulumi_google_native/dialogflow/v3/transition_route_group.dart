import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3_transition_route_response.dart';
import 'transition_route_group_args.dart';

/// Creates an TransitionRouteGroup in the specified flow. Note: You should always train a flow prior to sending it queries. See the [training documentation](https://cloud.google.com/dialogflow/cx/docs/concept/training).
class TransitionRouteGroup extends CustomResource {
  late final Output<String> agentId;

  /// The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  late final Output<String> displayName;
  late final Output<String> flowId;

  /// The language of the following fields in `TransitionRouteGroup`: * `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  late final Output<String?> languageCode;
  late final Output<String> location;

  /// The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` .
  late final Output<String> name;
  late final Output<String> project;

  /// Transition routes associated with the TransitionRouteGroup.
  late final Output<List<GoogleCloudDialogflowCxV3TransitionRouteResponse>>
      transitionRoutes;

  TransitionRouteGroup(
    String name, {
    TransitionRouteGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3:TransitionRouteGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentId = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.flowId = Output.createUnknown<String>();
    this.languageCode = Output.createUnknown<String?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.transitionRoutes = Output.createUnknown<
        List<GoogleCloudDialogflowCxV3TransitionRouteResponse>>();
  }
}

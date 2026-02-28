// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_transition_route.dart';

/// {@template pulumi_dialogflow_v3_transition_route_group_args_doc}
/// The set of arguments for TransitionRouteGroup.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3_transition_route_group_args_doc}
class TransitionRouteGroupArgs {
  final pulumi.Input<String> agentId;

  /// The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String> flowId;

  /// The language of the following fields in `TransitionRouteGroup`: * `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;

  /// The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` .
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Transition routes associated with the TransitionRouteGroup.
  final pulumi.Input<List<GoogleCloudDialogflowCxV3TransitionRoute>>?
      transitionRoutes;

  /// Creates a new [TransitionRouteGroupArgs].
  /// [agentId] Required.
  /// [displayName] The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  /// [flowId] Required.
  /// [languageCode] The language of the following fields in `TransitionRouteGroup`: * `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  /// [location] Optional.
  /// [name] The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` .
  /// [project] Optional.
  /// [transitionRoutes] Transition routes associated with the TransitionRouteGroup.
  TransitionRouteGroupArgs({
    required String agentId,
    required String displayName,
    required String flowId,
    String? languageCode,
    String? location,
    String? name,
    String? project,
    List<GoogleCloudDialogflowCxV3TransitionRoute>? transitionRoutes,
  })  : agentId = pulumi.Input.asInput<String>(agentId),
        displayName = pulumi.Input.asInput<String>(displayName),
        flowId = pulumi.Input.asInput<String>(flowId),
        languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        transitionRoutes = pulumi.Input.asOptionalInput<
            List<GoogleCloudDialogflowCxV3TransitionRoute>>(transitionRoutes);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['displayName'] = displayName;
    map['flowId'] = flowId;
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
    final transitionRoutesValue = transitionRoutes;
    if (transitionRoutesValue != null) {
      map['transitionRoutes'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3TransitionRoute>,
              List<Map<String, dynamic>>>(
          transitionRoutesValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudDialogflowCxV3TransitionRoute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory TransitionRouteGroupArgs.fromMap(Map<String, dynamic> map) {
    return TransitionRouteGroupArgs(
      agentId: map['agentId'] as String,
      displayName: map['displayName'] as String,
      flowId: map['flowId'] as String,
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      transitionRoutes: map['transitionRoutes'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudDialogflowCxV3TransitionRoute>(
              map['transitionRoutes'],
              (value) => GoogleCloudDialogflowCxV3TransitionRoute.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

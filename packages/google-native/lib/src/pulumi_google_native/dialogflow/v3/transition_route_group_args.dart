// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3_transition_route.dart';

/// The set of arguments for TransitionRouteGroup.
class TransitionRouteGroupArgs {
  final Input<String> agentId;

  /// The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  final Input<String> displayName;
  final Input<String> flowId;

  /// The language of the following fields in `TransitionRouteGroup`: * `TransitionRouteGroup.transition_routes.trigger_fulfillment.messages` * `TransitionRouteGroup.transition_routes.trigger_fulfillment.conditional_cases` If not specified, the agent's default language is used. [Many languages](https://cloud.google.com/dialogflow/cx/docs/reference/language) are supported. Note: languages must be enabled in the agent before they can be used.
  final Input<String>? languageCode;
  final Input<String>? location;

  /// The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` .
  final Input<String>? name;
  final Input<String>? project;

  /// Transition routes associated with the TransitionRouteGroup.
  final Input<List<GoogleCloudDialogflowCxV3TransitionRoute>>? transitionRoutes;

  TransitionRouteGroupArgs({
    required this.agentId,
    required this.displayName,
    required this.flowId,
    this.languageCode,
    this.location,
    this.name,
    this.project,
    this.transitionRoutes,
  });

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
      map['transitionRoutes'] = Input.mapOptionalInputValue<
              List<GoogleCloudDialogflowCxV3TransitionRoute>,
              List<Map<String, dynamic>>>(
          transitionRoutesValue,
          (value) => Input.encodeList<GoogleCloudDialogflowCxV3TransitionRoute,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory TransitionRouteGroupArgs.fromMap(Map<String, dynamic> map) {
    return TransitionRouteGroupArgs(
      agentId: Input.asInput<String>(map['agentId']),
      displayName: Input.asInput<String>(map['displayName']),
      flowId: Input.asInput<String>(map['flowId']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      transitionRoutes:
          Input.asOptionalInput<List<GoogleCloudDialogflowCxV3TransitionRoute>>(
              map['transitionRoutes']),
    );
  }
}

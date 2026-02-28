// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3beta1_get_transition_route_group_dialogflow_v3beta1_args_doc}
/// Arguments for getTransitionRouteGroup.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_get_transition_route_group_dialogflow_v3beta1_args_doc}
class GetTransitionRouteGroupDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> flowId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> transitionRouteGroupId;

  /// Creates a new [GetTransitionRouteGroupDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [flowId] Required.
  /// [languageCode] Optional.
  /// [location] Required.
  /// [project] Optional.
  /// [transitionRouteGroupId] Required.
  GetTransitionRouteGroupDialogflowV3beta1Args({
    required String agentId,
    required String flowId,
    String? languageCode,
    required String location,
    String? project,
    required String transitionRouteGroupId,
  })  : agentId = pulumi.Input.asInput<String>(agentId),
        flowId = pulumi.Input.asInput<String>(flowId),
        languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        transitionRouteGroupId =
            pulumi.Input.asInput<String>(transitionRouteGroupId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['agentId'] = agentId;
    map['flowId'] = flowId;
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['transitionRouteGroupId'] = transitionRouteGroupId;
    return map;
  }

  factory GetTransitionRouteGroupDialogflowV3beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetTransitionRouteGroupDialogflowV3beta1Args(
      agentId: map['agentId'] as String,
      flowId: map['flowId'] as String,
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      transitionRouteGroupId: map['transitionRouteGroupId'] as String,
    );
  }
}

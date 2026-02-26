// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3beta1_transition_route_response.dart';

/// Result data returned by getTransitionRouteGroup.
class GetTransitionRouteGroupResult2 {
  /// The human-readable name of the transition route group, unique within the flow. The display name can be no longer than 30 characters.
  final String displayName;

  /// The unique identifier of the transition route group. TransitionRouteGroups.CreateTransitionRouteGroup populates the name automatically. Format: `projects//locations//agents//flows//transitionRouteGroups/` or `projects//locations//agents//transitionRouteGroups/` for agent-level groups.
  final String name;

  /// Transition routes associated with the TransitionRouteGroup.
  final List<GoogleCloudDialogflowCxV3beta1TransitionRouteResponse>
      transitionRoutes;

  GetTransitionRouteGroupResult2({
    required this.displayName,
    required this.name,
    required this.transitionRoutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['name'] = name;
    map['transitionRoutes'] = Input.encodeList<
        GoogleCloudDialogflowCxV3beta1TransitionRouteResponse,
        Map<String, dynamic>>(transitionRoutes, (value) => value.toMap());
    return map;
  }

  factory GetTransitionRouteGroupResult2.fromMap(Map<String, dynamic> map) {
    return GetTransitionRouteGroupResult2(
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      transitionRoutes: Input.decodeList<
              GoogleCloudDialogflowCxV3beta1TransitionRouteResponse>(
          map['transitionRoutes'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1TransitionRouteResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}

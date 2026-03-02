// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http_route_action.dart';
import 'get_route_spec_http_route_match.dart';
import 'get_route_spec_http_route_retry_policy.dart';
import 'get_route_spec_http_route_timeout.dart';

class GetRouteSpecHttpRoute {
  final pulumi.Input<List<GetRouteSpecHttpRouteAction>> actions;
  final pulumi.Input<List<GetRouteSpecHttpRouteMatch>> matches;
  final pulumi.Input<List<GetRouteSpecHttpRouteRetryPolicy>> retryPolicies;
  final pulumi.Input<List<GetRouteSpecHttpRouteTimeout>> timeouts;

  /// Creates a new [GetRouteSpecHttpRoute].
  /// [actions] Required.
  /// [matches] Required.
  /// [retryPolicies] Required.
  /// [timeouts] Required.
  GetRouteSpecHttpRoute({
    required this.actions,
    required this.matches,
    required this.retryPolicies,
    required this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<GetRouteSpecHttpRouteAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GetRouteSpecHttpRouteAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matches': pulumi.Input.mapInputValue<List<GetRouteSpecHttpRouteMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetRouteSpecHttpRouteMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retryPolicies': pulumi.Input.mapInputValue<List<GetRouteSpecHttpRouteRetryPolicy>, List<Map<String, dynamic>>>(retryPolicies, (value) => pulumi.Input.encodeList<GetRouteSpecHttpRouteRetryPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': pulumi.Input.mapInputValue<List<GetRouteSpecHttpRouteTimeout>, List<Map<String, dynamic>>>(timeouts, (value) => pulumi.Input.encodeList<GetRouteSpecHttpRouteTimeout, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRouteSpecHttpRoute.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRoute(
      actions: (pulumi.Input.decodeList<GetRouteSpecHttpRouteAction>(map['actions']!, (value) => GetRouteSpecHttpRouteAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      matches: (pulumi.Input.decodeList<GetRouteSpecHttpRouteMatch>(map['matches']!, (value) => GetRouteSpecHttpRouteMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      retryPolicies: (pulumi.Input.decodeList<GetRouteSpecHttpRouteRetryPolicy>(map['retryPolicies']!, (value) => GetRouteSpecHttpRouteRetryPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeouts: (pulumi.Input.decodeList<GetRouteSpecHttpRouteTimeout>(map['timeouts']!, (value) => GetRouteSpecHttpRouteTimeout.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http2_route_action.dart';
import 'get_route_spec_http2_route_match.dart';
import 'get_route_spec_http2_route_retry_policy.dart';
import 'get_route_spec_http2_route_timeout.dart';

class GetRouteSpecHttp2Route {
  final pulumi.Input<List<GetRouteSpecHttp2RouteAction>> actions;
  final pulumi.Input<List<GetRouteSpecHttp2RouteMatch>> matches;
  final pulumi.Input<List<GetRouteSpecHttp2RouteRetryPolicy>> retryPolicies;
  final pulumi.Input<List<GetRouteSpecHttp2RouteTimeout>> timeouts;

  /// Creates a new [GetRouteSpecHttp2Route].
  /// [actions] Required.
  /// [matches] Required.
  /// [retryPolicies] Required.
  /// [timeouts] Required.
  GetRouteSpecHttp2Route({
    required this.actions,
    required this.matches,
    required this.retryPolicies,
    required this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<GetRouteSpecHttp2RouteAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GetRouteSpecHttp2RouteAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matches': pulumi.Input.mapInputValue<List<GetRouteSpecHttp2RouteMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetRouteSpecHttp2RouteMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'retryPolicies': pulumi.Input.mapInputValue<List<GetRouteSpecHttp2RouteRetryPolicy>, List<Map<String, dynamic>>>(retryPolicies, (value) => pulumi.Input.encodeList<GetRouteSpecHttp2RouteRetryPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': pulumi.Input.mapInputValue<List<GetRouteSpecHttp2RouteTimeout>, List<Map<String, dynamic>>>(timeouts, (value) => pulumi.Input.encodeList<GetRouteSpecHttp2RouteTimeout, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRouteSpecHttp2Route.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2Route(
      actions: (pulumi.Input.decodeList<GetRouteSpecHttp2RouteAction>(map['actions'], (value) => GetRouteSpecHttp2RouteAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      matches: (pulumi.Input.decodeList<GetRouteSpecHttp2RouteMatch>(map['matches'], (value) => GetRouteSpecHttp2RouteMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      retryPolicies: (pulumi.Input.decodeList<GetRouteSpecHttp2RouteRetryPolicy>(map['retryPolicies'], (value) => GetRouteSpecHttp2RouteRetryPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeouts: (pulumi.Input.decodeList<GetRouteSpecHttp2RouteTimeout>(map['timeouts'], (value) => GetRouteSpecHttp2RouteTimeout.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


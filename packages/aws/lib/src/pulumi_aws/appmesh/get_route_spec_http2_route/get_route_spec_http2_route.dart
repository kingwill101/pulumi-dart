// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_spec_http2_route_action/get_route_spec_http2_route_action.dart';
import '../get_route_spec_http2_route_match/get_route_spec_http2_route_match.dart';
import '../get_route_spec_http2_route_retry_policy/get_route_spec_http2_route_retry_policy.dart';
import '../get_route_spec_http2_route_timeout/get_route_spec_http2_route_timeout.dart';

class GetRouteSpecHttp2Route {
  final List<GetRouteSpecHttp2RouteAction> actions;
  final List<GetRouteSpecHttp2RouteMatch> matches;
  final List<GetRouteSpecHttp2RouteRetryPolicy> retryPolicies;
  final List<GetRouteSpecHttp2RouteTimeout> timeouts;

  GetRouteSpecHttp2Route({
    required this.actions,
    required this.matches,
    required this.retryPolicies,
    required this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] =
        Input.encodeList<GetRouteSpecHttp2RouteAction, Map<String, dynamic>>(
            actions, (value) => value.toMap());
    map['matches'] =
        Input.encodeList<GetRouteSpecHttp2RouteMatch, Map<String, dynamic>>(
            matches, (value) => value.toMap());
    map['retryPolicies'] = Input.encodeList<GetRouteSpecHttp2RouteRetryPolicy,
        Map<String, dynamic>>(retryPolicies, (value) => value.toMap());
    map['timeouts'] =
        Input.encodeList<GetRouteSpecHttp2RouteTimeout, Map<String, dynamic>>(
            timeouts, (value) => value.toMap());
    return map;
  }

  factory GetRouteSpecHttp2Route.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2Route(
      actions: Input.decodeList<GetRouteSpecHttp2RouteAction>(
          map['actions'],
          (value) => GetRouteSpecHttp2RouteAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      matches: Input.decodeList<GetRouteSpecHttp2RouteMatch>(
          map['matches'],
          (value) => GetRouteSpecHttp2RouteMatch.fromMap(
              (value as Map).cast<String, dynamic>())),
      retryPolicies: Input.decodeList<GetRouteSpecHttp2RouteRetryPolicy>(
          map['retryPolicies'],
          (value) => GetRouteSpecHttp2RouteRetryPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      timeouts: Input.decodeList<GetRouteSpecHttp2RouteTimeout>(
          map['timeouts'],
          (value) => GetRouteSpecHttp2RouteTimeout.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

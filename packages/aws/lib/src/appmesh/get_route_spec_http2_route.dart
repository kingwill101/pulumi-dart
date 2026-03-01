// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http2_route_action.dart';
import 'get_route_spec_http2_route_match.dart';
import 'get_route_spec_http2_route_retry_policy.dart';
import 'get_route_spec_http2_route_timeout.dart';

class GetRouteSpecHttp2Route {
  final List<GetRouteSpecHttp2RouteAction> actions;
  final List<GetRouteSpecHttp2RouteMatch> matches;
  final List<GetRouteSpecHttp2RouteRetryPolicy> retryPolicies;
  final List<GetRouteSpecHttp2RouteTimeout> timeouts;

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
      'actions':
          pulumi.Input.encodeList<
            GetRouteSpecHttp2RouteAction,
            Map<String, dynamic>
          >(actions, (value) => value.toMap()),
      'matches':
          pulumi.Input.encodeList<
            GetRouteSpecHttp2RouteMatch,
            Map<String, dynamic>
          >(matches, (value) => value.toMap()),
      'retryPolicies':
          pulumi.Input.encodeList<
            GetRouteSpecHttp2RouteRetryPolicy,
            Map<String, dynamic>
          >(retryPolicies, (value) => value.toMap()),
      'timeouts':
          pulumi.Input.encodeList<
            GetRouteSpecHttp2RouteTimeout,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory GetRouteSpecHttp2Route.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttp2Route(
      actions: pulumi.Input.decodeList<GetRouteSpecHttp2RouteAction>(
        map['actions'],
        (value) => GetRouteSpecHttp2RouteAction.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      matches: pulumi.Input.decodeList<GetRouteSpecHttp2RouteMatch>(
        map['matches'],
        (value) => GetRouteSpecHttp2RouteMatch.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      retryPolicies: pulumi.Input.decodeList<GetRouteSpecHttp2RouteRetryPolicy>(
        map['retryPolicies'],
        (value) => GetRouteSpecHttp2RouteRetryPolicy.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      timeouts: pulumi.Input.decodeList<GetRouteSpecHttp2RouteTimeout>(
        map['timeouts'],
        (value) => GetRouteSpecHttp2RouteTimeout.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}

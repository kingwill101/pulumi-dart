// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_http_route_action.dart';
import 'get_route_spec_http_route_match.dart';
import 'get_route_spec_http_route_retry_policy.dart';
import 'get_route_spec_http_route_timeout.dart';

class GetRouteSpecHttpRoute {
  final List<GetRouteSpecHttpRouteAction> actions;
  final List<GetRouteSpecHttpRouteMatch> matches;
  final List<GetRouteSpecHttpRouteRetryPolicy> retryPolicies;
  final List<GetRouteSpecHttpRouteTimeout> timeouts;

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
      'actions': pulumi.Input.encodeList<GetRouteSpecHttpRouteAction, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'matches': pulumi.Input.encodeList<GetRouteSpecHttpRouteMatch, Map<String, dynamic>>(matches, (value) => value.toMap()),
      'retryPolicies': pulumi.Input.encodeList<GetRouteSpecHttpRouteRetryPolicy, Map<String, dynamic>>(retryPolicies, (value) => value.toMap()),
      'timeouts': pulumi.Input.encodeList<GetRouteSpecHttpRouteTimeout, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory GetRouteSpecHttpRoute.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecHttpRoute(
      actions: pulumi.Input.decodeList<GetRouteSpecHttpRouteAction>(map['actions'], (value) => GetRouteSpecHttpRouteAction.fromMap((value as Map).cast<String, dynamic>())),
      matches: pulumi.Input.decodeList<GetRouteSpecHttpRouteMatch>(map['matches'], (value) => GetRouteSpecHttpRouteMatch.fromMap((value as Map).cast<String, dynamic>())),
      retryPolicies: pulumi.Input.decodeList<GetRouteSpecHttpRouteRetryPolicy>(map['retryPolicies'], (value) => GetRouteSpecHttpRouteRetryPolicy.fromMap((value as Map).cast<String, dynamic>())),
      timeouts: pulumi.Input.decodeList<GetRouteSpecHttpRouteTimeout>(map['timeouts'], (value) => GetRouteSpecHttpRouteTimeout.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


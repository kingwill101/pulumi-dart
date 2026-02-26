// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_spec_tcp_route_action/get_route_spec_tcp_route_action.dart';
import '../get_route_spec_tcp_route_match/get_route_spec_tcp_route_match.dart';
import '../get_route_spec_tcp_route_timeout/get_route_spec_tcp_route_timeout.dart';

class GetRouteSpecTcpRoute {
  final List<GetRouteSpecTcpRouteAction> actions;
  final List<GetRouteSpecTcpRouteMatch> matches;
  final List<GetRouteSpecTcpRouteTimeout> timeouts;

  GetRouteSpecTcpRoute({
    required this.actions,
    required this.matches,
    required this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] =
        Input.encodeList<GetRouteSpecTcpRouteAction, Map<String, dynamic>>(
            actions, (value) => value.toMap());
    map['matches'] =
        Input.encodeList<GetRouteSpecTcpRouteMatch, Map<String, dynamic>>(
            matches, (value) => value.toMap());
    map['timeouts'] =
        Input.encodeList<GetRouteSpecTcpRouteTimeout, Map<String, dynamic>>(
            timeouts, (value) => value.toMap());
    return map;
  }

  factory GetRouteSpecTcpRoute.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecTcpRoute(
      actions: Input.decodeList<GetRouteSpecTcpRouteAction>(
          map['actions'],
          (value) => GetRouteSpecTcpRouteAction.fromMap(
              (value as Map).cast<String, dynamic>())),
      matches: Input.decodeList<GetRouteSpecTcpRouteMatch>(
          map['matches'],
          (value) => GetRouteSpecTcpRouteMatch.fromMap(
              (value as Map).cast<String, dynamic>())),
      timeouts: Input.decodeList<GetRouteSpecTcpRouteTimeout>(
          map['timeouts'],
          (value) => GetRouteSpecTcpRouteTimeout.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}

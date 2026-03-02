// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_tcp_route_action.dart';
import 'get_route_spec_tcp_route_match.dart';
import 'get_route_spec_tcp_route_timeout.dart';

class GetRouteSpecTcpRoute {
  final pulumi.Input<List<GetRouteSpecTcpRouteAction>> actions;
  final pulumi.Input<List<GetRouteSpecTcpRouteMatch>> matches;
  final pulumi.Input<List<GetRouteSpecTcpRouteTimeout>> timeouts;

  /// Creates a new [GetRouteSpecTcpRoute].
  /// [actions] Required.
  /// [matches] Required.
  /// [timeouts] Required.
  GetRouteSpecTcpRoute({
    required this.actions,
    required this.matches,
    required this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<GetRouteSpecTcpRouteAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GetRouteSpecTcpRouteAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matches': pulumi.Input.mapInputValue<List<GetRouteSpecTcpRouteMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetRouteSpecTcpRouteMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': pulumi.Input.mapInputValue<List<GetRouteSpecTcpRouteTimeout>, List<Map<String, dynamic>>>(timeouts, (value) => pulumi.Input.encodeList<GetRouteSpecTcpRouteTimeout, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRouteSpecTcpRoute.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecTcpRoute(
      actions: (pulumi.Input.decodeList<GetRouteSpecTcpRouteAction>(map['actions']!, (value) => GetRouteSpecTcpRouteAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      matches: (pulumi.Input.decodeList<GetRouteSpecTcpRouteMatch>(map['matches']!, (value) => GetRouteSpecTcpRouteMatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeouts: (pulumi.Input.decodeList<GetRouteSpecTcpRouteTimeout>(map['timeouts']!, (value) => GetRouteSpecTcpRouteTimeout.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


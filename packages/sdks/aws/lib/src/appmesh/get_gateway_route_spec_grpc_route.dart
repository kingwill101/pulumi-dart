// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_grpc_route_action.dart';
import 'get_gateway_route_spec_grpc_route_match.dart';

class GetGatewayRouteSpecGrpcRoute {
  final pulumi.Input<List<GetGatewayRouteSpecGrpcRouteAction>> actions;
  final pulumi.Input<List<GetGatewayRouteSpecGrpcRouteMatch>> matches;

  /// Creates a new [GetGatewayRouteSpecGrpcRoute].
  /// [actions] Required.
  /// [matches] Required.
  GetGatewayRouteSpecGrpcRoute({required this.actions, required this.matches});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions':
          pulumi.Input.mapInputValue<
            List<GetGatewayRouteSpecGrpcRouteAction>,
            List<Map<String, dynamic>>
          >(
            actions,
            (value) =>
                pulumi.Input.encodeList<
                  GetGatewayRouteSpecGrpcRouteAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'matches':
          pulumi.Input.mapInputValue<
            List<GetGatewayRouteSpecGrpcRouteMatch>,
            List<Map<String, dynamic>>
          >(
            matches,
            (value) =>
                pulumi.Input.encodeList<
                  GetGatewayRouteSpecGrpcRouteMatch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetGatewayRouteSpecGrpcRoute.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecGrpcRoute(
      actions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetGatewayRouteSpecGrpcRouteAction>(
          map['actions']!,
          (value) => GetGatewayRouteSpecGrpcRouteAction.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      matches: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetGatewayRouteSpecGrpcRouteMatch>(
          map['matches']!,
          (value) => GetGatewayRouteSpecGrpcRouteMatch.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}

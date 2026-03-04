// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_grpc_route_action.dart';
import 'get_route_spec_grpc_route_match.dart';
import 'get_route_spec_grpc_route_retry_policy.dart';
import 'get_route_spec_grpc_route_timeout.dart';

class GetRouteSpecGrpcRoute {
  final pulumi.Input<List<GetRouteSpecGrpcRouteAction>> actions;
  final pulumi.Input<List<GetRouteSpecGrpcRouteMatch>> matches;
  final pulumi.Input<List<GetRouteSpecGrpcRouteRetryPolicy>> retryPolicies;
  final pulumi.Input<List<GetRouteSpecGrpcRouteTimeout>> timeouts;

  /// Creates a new [GetRouteSpecGrpcRoute].
  /// [actions] Required.
  /// [matches] Required.
  /// [retryPolicies] Required.
  /// [timeouts] Required.
  GetRouteSpecGrpcRoute({
    required this.actions,
    required this.matches,
    required this.retryPolicies,
    required this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions':
          pulumi.Input.mapInputValue<
            List<GetRouteSpecGrpcRouteAction>,
            List<Map<String, dynamic>>
          >(
            actions,
            (value) =>
                pulumi.Input.encodeList<
                  GetRouteSpecGrpcRouteAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'matches':
          pulumi.Input.mapInputValue<
            List<GetRouteSpecGrpcRouteMatch>,
            List<Map<String, dynamic>>
          >(
            matches,
            (value) =>
                pulumi.Input.encodeList<
                  GetRouteSpecGrpcRouteMatch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'retryPolicies':
          pulumi.Input.mapInputValue<
            List<GetRouteSpecGrpcRouteRetryPolicy>,
            List<Map<String, dynamic>>
          >(
            retryPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  GetRouteSpecGrpcRouteRetryPolicy,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'timeouts':
          pulumi.Input.mapInputValue<
            List<GetRouteSpecGrpcRouteTimeout>,
            List<Map<String, dynamic>>
          >(
            timeouts,
            (value) =>
                pulumi.Input.encodeList<
                  GetRouteSpecGrpcRouteTimeout,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetRouteSpecGrpcRoute.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecGrpcRoute(
      actions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetRouteSpecGrpcRouteAction>(
          map['actions']!,
          (value) => GetRouteSpecGrpcRouteAction.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      matches: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetRouteSpecGrpcRouteMatch>(
          map['matches']!,
          (value) => GetRouteSpecGrpcRouteMatch.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      retryPolicies: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetRouteSpecGrpcRouteRetryPolicy>(
          map['retryPolicies']!,
          (value) => GetRouteSpecGrpcRouteRetryPolicy.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      timeouts: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetRouteSpecGrpcRouteTimeout>(
          map['timeouts']!,
          (value) => GetRouteSpecGrpcRouteTimeout.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}

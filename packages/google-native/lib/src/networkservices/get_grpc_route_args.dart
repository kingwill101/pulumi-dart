// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1_get_grpc_route_args_doc}
/// Arguments for getGrpcRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1_get_grpc_route_args_doc}
class GetGrpcRouteArgs {
  final pulumi.Input<String> grpcRouteId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGrpcRouteArgs].
  /// [grpcRouteId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGrpcRouteArgs({
    required String grpcRouteId,
    required String location,
    String? project,
  })  : grpcRouteId = pulumi.Input.asInput<String>(grpcRouteId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['grpcRouteId'] = grpcRouteId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGrpcRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetGrpcRouteArgs(
      grpcRouteId: map['grpcRouteId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

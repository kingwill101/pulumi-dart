// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_grpc_route_networkservices_v1beta1_args_doc}
/// Arguments for getGrpcRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_grpc_route_networkservices_v1beta1_args_doc}
class GetGrpcRouteNetworkservicesV1beta1Args {
  final pulumi.Input<String> grpcRouteId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetGrpcRouteNetworkservicesV1beta1Args].
  /// [grpcRouteId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetGrpcRouteNetworkservicesV1beta1Args({
    required String grpcRouteId,
    required String location,
    String? project,
  }) : grpcRouteId = pulumi.Input.asInput<String>(grpcRouteId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcRouteId': grpcRouteId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetGrpcRouteNetworkservicesV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGrpcRouteNetworkservicesV1beta1Args(
      grpcRouteId: map['grpcRouteId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

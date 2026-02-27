// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGrpcRoute.
class GetGrpcRouteNetworkservicesV1beta1Args {
  final pulumi.Input<String> grpcRouteId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetGrpcRouteNetworkservicesV1beta1Args({
    required this.grpcRouteId,
    required this.location,
    this.project,
  });

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

  factory GetGrpcRouteNetworkservicesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetGrpcRouteNetworkservicesV1beta1Args(
      grpcRouteId: pulumi.Input.asInput<String>(map['grpcRouteId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

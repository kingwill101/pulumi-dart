// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGrpcRoute.
class GetGrpcRouteArgs {
  final pulumi.Input<String> grpcRouteId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetGrpcRouteArgs({
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

  factory GetGrpcRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetGrpcRouteArgs(
      grpcRouteId: pulumi.Input.asInput<String>(map['grpcRouteId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGrpcRoute.
class GetGrpcRouteArgs2 {
  final Input<String> grpcRouteId;
  final Input<String> location;
  final Input<String>? project;

  GetGrpcRouteArgs2({
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

  factory GetGrpcRouteArgs2.fromMap(Map<String, dynamic> map) {
    return GetGrpcRouteArgs2(
      grpcRouteId: Input.asInput<String>(map['grpcRouteId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTcpRoute.
class GetTcpRouteArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> tcpRouteId;

  GetTcpRouteArgs({
    required this.location,
    this.project,
    required this.tcpRouteId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tcpRouteId'] = tcpRouteId;
    return map;
  }

  factory GetTcpRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetTcpRouteArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      tcpRouteId: Input.asInput<String>(map['tcpRouteId']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRoute.
class GetRouteArgs5 {
  final Input<String> location;
  final Input<String> privateConnectionId;
  final Input<String>? project;
  final Input<String> routeId;

  GetRouteArgs5({
    required this.location,
    required this.privateConnectionId,
    this.project,
    required this.routeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['privateConnectionId'] = privateConnectionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['routeId'] = routeId;
    return map;
  }

  factory GetRouteArgs5.fromMap(Map<String, dynamic> map) {
    return GetRouteArgs5(
      location: Input.asInput<String>(map['location']),
      privateConnectionId: Input.asInput<String>(map['privateConnectionId']),
      project: Input.asOptionalInput<String>(map['project']),
      routeId: Input.asInput<String>(map['routeId']),
    );
  }
}

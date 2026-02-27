// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRoute.
class GetRouteDatastreamV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> routeId;

  GetRouteDatastreamV1alpha1Args({
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

  factory GetRouteDatastreamV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetRouteDatastreamV1alpha1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      privateConnectionId:
          pulumi.Input.asInput<String>(map['privateConnectionId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      routeId: pulumi.Input.asInput<String>(map['routeId']),
    );
  }
}

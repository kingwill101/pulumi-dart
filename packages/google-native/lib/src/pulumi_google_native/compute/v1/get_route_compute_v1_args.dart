// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRoute.
class GetRouteComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> route;

  GetRouteComputeV1Args({
    this.project,
    required this.route,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['route'] = route;
    return map;
  }

  factory GetRouteComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetRouteComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      route: pulumi.Input.asInput<String>(map['route']),
    );
  }
}

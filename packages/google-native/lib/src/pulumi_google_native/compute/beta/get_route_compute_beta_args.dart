// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRoute.
class GetRouteComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> route;

  GetRouteComputeBetaArgs({
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

  factory GetRouteComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      route: pulumi.Input.asInput<String>(map['route']),
    );
  }
}

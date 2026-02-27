// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRoute.
class GetRouteArgs {
  final Input<String>? project;
  final Input<String> route;

  GetRouteArgs({
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

  factory GetRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteArgs(
      project: Input.asOptionalInput<String>(map['project']),
      route: Input.asInput<String>(map['route']),
    );
  }
}

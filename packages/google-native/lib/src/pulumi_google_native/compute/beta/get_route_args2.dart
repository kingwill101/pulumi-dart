// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRoute.
class GetRouteArgs2 {
  final Input<String>? project;
  final Input<String> route;

  GetRouteArgs2({
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

  factory GetRouteArgs2.fromMap(Map<String, dynamic> map) {
    return GetRouteArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      route: Input.asInput<String>(map['route']),
    );
  }
}

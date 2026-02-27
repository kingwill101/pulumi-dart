// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getHttpRoute.
class GetHttpRouteArgs2 {
  final Input<String> httpRouteId;
  final Input<String> location;
  final Input<String>? project;

  GetHttpRouteArgs2({
    required this.httpRouteId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['httpRouteId'] = httpRouteId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetHttpRouteArgs2.fromMap(Map<String, dynamic> map) {
    return GetHttpRouteArgs2(
      httpRouteId: Input.asInput<String>(map['httpRouteId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getHttpRoute.
class GetHttpRouteArgs {
  final Input<String> httpRouteId;
  final Input<String> location;
  final Input<String>? project;

  GetHttpRouteArgs({
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

  factory GetHttpRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetHttpRouteArgs(
      httpRouteId: Input.asInput<String>(map['httpRouteId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}

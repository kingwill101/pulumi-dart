// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTlsRoute.
class GetTlsRouteArgs2 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> tlsRouteId;

  GetTlsRouteArgs2({
    required this.location,
    this.project,
    required this.tlsRouteId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tlsRouteId'] = tlsRouteId;
    return map;
  }

  factory GetTlsRouteArgs2.fromMap(Map<String, dynamic> map) {
    return GetTlsRouteArgs2(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      tlsRouteId: Input.asInput<String>(map['tlsRouteId']),
    );
  }
}

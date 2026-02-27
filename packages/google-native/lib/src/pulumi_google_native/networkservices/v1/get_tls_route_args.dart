// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTlsRoute.
class GetTlsRouteArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tlsRouteId;

  GetTlsRouteArgs({
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

  factory GetTlsRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetTlsRouteArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tlsRouteId: pulumi.Input.asInput<String>(map['tlsRouteId']),
    );
  }
}

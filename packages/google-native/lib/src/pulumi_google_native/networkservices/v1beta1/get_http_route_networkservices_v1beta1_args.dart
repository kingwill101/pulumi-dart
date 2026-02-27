// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHttpRoute.
class GetHttpRouteNetworkservicesV1beta1Args {
  final pulumi.Input<String> httpRouteId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetHttpRouteNetworkservicesV1beta1Args({
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

  factory GetHttpRouteNetworkservicesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetHttpRouteNetworkservicesV1beta1Args(
      httpRouteId: pulumi.Input.asInput<String>(map['httpRouteId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}

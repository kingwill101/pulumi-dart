// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTcpRoute.
class GetTcpRouteNetworkservicesV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tcpRouteId;

  GetTcpRouteNetworkservicesV1beta1Args({
    required this.location,
    this.project,
    required this.tcpRouteId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tcpRouteId'] = tcpRouteId;
    return map;
  }

  factory GetTcpRouteNetworkservicesV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetTcpRouteNetworkservicesV1beta1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tcpRouteId: pulumi.Input.asInput<String>(map['tcpRouteId']),
    );
  }
}

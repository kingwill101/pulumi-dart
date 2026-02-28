// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_tcp_route_networkservices_v1beta1_args_doc}
/// Arguments for getTcpRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_tcp_route_networkservices_v1beta1_args_doc}
class GetTcpRouteNetworkservicesV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tcpRouteId;

  /// Creates a new [GetTcpRouteNetworkservicesV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [tcpRouteId] Required.
  GetTcpRouteNetworkservicesV1beta1Args({
    required String location,
    String? project,
    required String tcpRouteId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        tcpRouteId = pulumi.Input.asInput<String>(tcpRouteId);

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
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tcpRouteId: map['tcpRouteId'] as String,
    );
  }
}

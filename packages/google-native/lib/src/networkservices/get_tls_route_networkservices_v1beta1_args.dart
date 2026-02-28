// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_tls_route_networkservices_v1beta1_args_doc}
/// Arguments for getTlsRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_tls_route_networkservices_v1beta1_args_doc}
class GetTlsRouteNetworkservicesV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tlsRouteId;

  /// Creates a new [GetTlsRouteNetworkservicesV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [tlsRouteId] Required.
  GetTlsRouteNetworkservicesV1beta1Args({
    required String location,
    String? project,
    required String tlsRouteId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      tlsRouteId = pulumi.Input.asInput<String>(tlsRouteId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'tlsRouteId': tlsRouteId,
    };
  }

  factory GetTlsRouteNetworkservicesV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTlsRouteNetworkservicesV1beta1Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tlsRouteId: map['tlsRouteId'] as String,
    );
  }
}


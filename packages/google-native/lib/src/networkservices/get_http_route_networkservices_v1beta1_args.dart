// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_http_route_networkservices_v1beta1_args_doc}
/// Arguments for getHttpRoute.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_http_route_networkservices_v1beta1_args_doc}
class GetHttpRouteNetworkservicesV1beta1Args {
  final pulumi.Input<String> httpRouteId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHttpRouteNetworkservicesV1beta1Args].
  /// [httpRouteId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetHttpRouteNetworkservicesV1beta1Args({
    required String httpRouteId,
    required String location,
    String? project,
  })  : httpRouteId = pulumi.Input.asInput<String>(httpRouteId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      httpRouteId: map['httpRouteId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

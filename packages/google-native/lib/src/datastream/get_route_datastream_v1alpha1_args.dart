// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datastream_v1alpha1_get_route_datastream_v1alpha1_args_doc}
/// Arguments for getRoute.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1alpha1_get_route_datastream_v1alpha1_args_doc}
class GetRouteDatastreamV1alpha1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> routeId;

  /// Creates a new [GetRouteDatastreamV1alpha1Args].
  /// [location] Required.
  /// [privateConnectionId] Required.
  /// [project] Optional.
  /// [routeId] Required.
  GetRouteDatastreamV1alpha1Args({
    required String location,
    required String privateConnectionId,
    String? project,
    required String routeId,
  })  : location = pulumi.Input.asInput<String>(location),
        privateConnectionId = pulumi.Input.asInput<String>(privateConnectionId),
        project = pulumi.Input.asOptionalInput<String>(project),
        routeId = pulumi.Input.asInput<String>(routeId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['privateConnectionId'] = privateConnectionId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['routeId'] = routeId;
    return map;
  }

  factory GetRouteDatastreamV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return GetRouteDatastreamV1alpha1Args(
      location: map['location'] as String,
      privateConnectionId: map['privateConnectionId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      routeId: map['routeId'] as String,
    );
  }
}

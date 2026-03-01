// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_response.dart';
import 'subnet_response.dart';

/// Route table resource.
class RouteTableResponse {
  /// Whether to disable the routes learned by BGP on that route table. True means disable.
  final bool? disableBgpRoutePropagation;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// The provisioning state of the route table resource.
  final String provisioningState;
  /// The resource GUID property of the route table.
  final String resourceGuid;
  /// Collection of routes contained within a route table.
  final List<RouteResponse>? routes;
  /// A collection of references to subnets.
  final List<SubnetResponse> subnets;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [RouteTableResponse].
  /// [disableBgpRoutePropagation] Whether to disable the routes learned by BGP on that route table. True means disable.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the route table resource.
  /// [resourceGuid] The resource GUID property of the route table.
  /// [routes] Collection of routes contained within a route table.
  /// [subnets] A collection of references to subnets.
  /// [tags] Resource tags.
  /// [type] Resource type.
  RouteTableResponse({
    this.disableBgpRoutePropagation,
    required this.etag,
    this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceGuid,
    this.routes,
    required this.subnets,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disableBgpRoutePropagation': ?disableBgpRoutePropagation,
      'etag': etag,
      'id': ?id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'routes': ?routes == null ? null : pulumi.Input.encodeList<RouteResponse, Map<String, dynamic>>(routes!, (value) => value.toMap()),
      'subnets': pulumi.Input.encodeList<SubnetResponse, Map<String, dynamic>>(subnets, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
    };
  }

  factory RouteTableResponse.fromMap(Map<String, dynamic> map) {
    return RouteTableResponse(
      disableBgpRoutePropagation: map['disableBgpRoutePropagation'] == null ? null : map['disableBgpRoutePropagation'] as bool,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<RouteResponse>(map['routes'], (value) => RouteResponse.fromMap((value as Map).cast<String, dynamic>())),
      subnets: pulumi.Input.decodeList<SubnetResponse>(map['subnets'], (value) => SubnetResponse.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}


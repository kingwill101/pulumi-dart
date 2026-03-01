// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_available_resources_resource.dart';

/// Result data returned by getTransitRouterAvailableResources.
class GetTransitRouterAvailableResourcesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;
  /// A list of Cen Transit Router Available Resources. Each element contains the following attributes:
  final List<GetTransitRouterAvailableResourcesResource> resources;
  /// (Available since v1.225.0) Indicates whether the zone supports the multicast feature.
  final bool? supportMulticast;

  /// Creates a new [GetTransitRouterAvailableResourcesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  /// [resources] A list of Cen Transit Router Available Resources. Each element contains the following attributes:
  /// [supportMulticast] (Available since v1.225.0) Indicates whether the zone supports the multicast feature.
  GetTransitRouterAvailableResourcesResult({
    required this.id,
    this.outputFile,
    required this.resources,
    this.supportMulticast,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'outputFile': ?outputFile,
      'resources': pulumi.Input.encodeList<GetTransitRouterAvailableResourcesResource, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'supportMulticast': ?supportMulticast,
    };
  }

  factory GetTransitRouterAvailableResourcesResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterAvailableResourcesResult(
      id: map['id'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resources: pulumi.Input.decodeList<GetTransitRouterAvailableResourcesResource>(map['resources'], (value) => GetTransitRouterAvailableResourcesResource.fromMap((value as Map).cast<String, dynamic>())),
      supportMulticast: map['supportMulticast'] == null ? null : map['supportMulticast'] as bool,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_shared_resources_resource.dart';

/// Result data returned by getSharedResources.
class GetSharedResourcesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  /// The resource share ID of resource manager.
  final String? resourceShareId;
  /// A list of Resource Manager Shared Resources. Each element contains the following attributes:
  final List<GetSharedResourcesResource> resources;
  /// The status of shared resource.
  final String? status;

  /// Creates a new [GetSharedResourcesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [resourceShareId] The resource share ID of resource manager.
  /// [resources] A list of Resource Manager Shared Resources. Each element contains the following attributes:
  /// [status] The status of shared resource.
  GetSharedResourcesResult({
    required this.id,
    required this.ids,
    this.outputFile,
    this.resourceShareId,
    required this.resources,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'resourceShareId': ?resourceShareId,
      'resources': pulumi.Input.encodeList<GetSharedResourcesResource, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'status': ?status,
    };
  }

  factory GetSharedResourcesResult.fromMap(Map<String, dynamic> map) {
    return GetSharedResourcesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceShareId: map['resourceShareId'] == null ? null : map['resourceShareId'] as String,
      resources: pulumi.Input.decodeList<GetSharedResourcesResource>(map['resources'], (value) => GetSharedResourcesResource.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}


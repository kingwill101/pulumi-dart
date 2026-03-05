// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_endpoint_service_resources_resource.dart';

/// Result data returned by getVpcEndpointServiceResources.
class GetVpcEndpointServiceResourcesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Vpc Endpoint Service Resource IDs.
  final List<String> ids;
  final String? outputFile;
  /// A list of Privatelink Vpc Endpoint Service Resources. Each element contains the following attributes:
  final List<GetVpcEndpointServiceResourcesResource> resources;
  final String serviceId;

  /// Creates a new [GetVpcEndpointServiceResourcesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Vpc Endpoint Service Resource IDs.
  /// [outputFile] Optional.
  /// [resources] A list of Privatelink Vpc Endpoint Service Resources. Each element contains the following attributes:
  /// [serviceId] Required.
  GetVpcEndpointServiceResourcesResult({
    required this.id,
    required this.ids,
    this.outputFile,
    required this.resources,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'resources': pulumi.Input.encodeList<GetVpcEndpointServiceResourcesResource, Map<String, dynamic>>(resources, (value) => value.toMap()),
      'serviceId': serviceId,
    };
  }

  factory GetVpcEndpointServiceResourcesResult.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointServiceResourcesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resources: pulumi.Input.decodeList<GetVpcEndpointServiceResourcesResource>(map['resources']!, (value) => GetVpcEndpointServiceResourcesResource.fromMap((value as Map).cast<String, dynamic>())),
      serviceId: map['serviceId'] as String,
    );
  }
}


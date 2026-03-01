// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'graph_apicompute_regional_service_resource_response.dart';

/// Properties for GraphAPIComputeServiceResource.
class GraphAPIComputeServiceResourcePropertiesResponse {
  /// Time of the last state change (ISO-8601 format).
  final String creationTime;
  /// GraphAPICompute endpoint for the service.
  final String? graphApiComputeEndpoint;
  /// Instance count for the service.
  final int? instanceCount;
  /// Instance type for the service.
  final String? instanceSize;
  /// An array that contains all of the locations for the service.
  final List<GraphAPIComputeRegionalServiceResourceResponse> locations;
  /// ServiceType for the service.
  /// Expected value is 'GraphAPICompute'.
  final String serviceType;
  /// Describes the status of a service.
  final String status;

  /// Creates a new [GraphAPIComputeServiceResourcePropertiesResponse].
  /// [creationTime] Time of the last state change (ISO-8601 format).
  /// [graphApiComputeEndpoint] GraphAPICompute endpoint for the service.
  /// [instanceCount] Instance count for the service.
  /// [instanceSize] Instance type for the service.
  /// [locations] An array that contains all of the locations for the service.
  /// [serviceType] ServiceType for the service.
  /// [status] Describes the status of a service.
  GraphAPIComputeServiceResourcePropertiesResponse({
    required this.creationTime,
    this.graphApiComputeEndpoint,
    this.instanceCount,
    this.instanceSize,
    required this.locations,
    required this.serviceType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTime': creationTime,
      'graphApiComputeEndpoint': ?graphApiComputeEndpoint,
      'instanceCount': ?instanceCount,
      'instanceSize': ?instanceSize,
      'locations': pulumi.Input.encodeList<GraphAPIComputeRegionalServiceResourceResponse, Map<String, dynamic>>(locations, (value) => value.toMap()),
      'serviceType': serviceType,
      'status': status,
    };
  }

  factory GraphAPIComputeServiceResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GraphAPIComputeServiceResourcePropertiesResponse(
      creationTime: map['creationTime'] as String,
      graphApiComputeEndpoint: map['graphApiComputeEndpoint'] == null ? null : map['graphApiComputeEndpoint'] as String,
      instanceCount: map['instanceCount'] == null ? null : map['instanceCount'] as int,
      instanceSize: map['instanceSize'] == null ? null : map['instanceSize'] as String,
      locations: pulumi.Input.decodeList<GraphAPIComputeRegionalServiceResourceResponse>(map['locations'], (value) => GraphAPIComputeRegionalServiceResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      serviceType: map['serviceType'] as String,
      status: map['status'] as String,
    );
  }
}


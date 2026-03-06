// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'graph_apicompute_regional_service_resource_response.dart';

/// Properties for GraphAPIComputeServiceResource.
class GraphAPIComputeServiceResourcePropertiesResponse {
  /// Time of the last state change (ISO-8601 format).
  final pulumi.Input<String> creationTime;
  /// GraphAPICompute endpoint for the service.
  final pulumi.Input<String>? graphApiComputeEndpoint;
  /// Instance count for the service.
  final pulumi.Input<int>? instanceCount;
  /// Instance type for the service.
  final pulumi.Input<String>? instanceSize;
  /// An array that contains all of the locations for the service.
  final pulumi.Input<List<GraphAPIComputeRegionalServiceResourceResponse>> locations;
  /// ServiceType for the service.
  /// Expected value is 'GraphAPICompute'.
  final pulumi.Input<String> serviceType;
  /// Describes the status of a service.
  final pulumi.Input<String> status;

  /// Creates a new [GraphAPIComputeServiceResourcePropertiesResponse].
  /// [creationTime] Time of the last state change (ISO-8601 format).
  /// [graphApiComputeEndpoint] GraphAPICompute endpoint for the service.
  /// [instanceCount] Instance count for the service.
  /// [instanceSize] Instance type for the service.
  /// [locations] An array that contains all of the locations for the service.
  /// [serviceType] ServiceType for the service.
  /// [status] Describes the status of a service.
  const GraphAPIComputeServiceResourcePropertiesResponse({
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
      'locations': pulumi.Input.mapInputValue<List<GraphAPIComputeRegionalServiceResourceResponse>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<GraphAPIComputeRegionalServiceResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceType': serviceType,
      'status': status,
    };
  }

  factory GraphAPIComputeServiceResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GraphAPIComputeServiceResourcePropertiesResponse(
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      graphApiComputeEndpoint: (() { final guardedValue = map['graphApiComputeEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceCount: (() { final guardedValue = map['instanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceSize: (() { final guardedValue = map['instanceSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locations: pulumi.Input.fromValue(pulumi.Input.decodeList<GraphAPIComputeRegionalServiceResourceResponse>(map['locations']!, (value) => GraphAPIComputeRegionalServiceResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      serviceType: pulumi.Input.fromValue(map['serviceType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_registry_instance_response.dart';
import 'service_registry_resource_requests_response.dart';

/// Service Registry properties payload
class ServiceRegistryPropertiesResponse {
  /// Collection of instances belong to Service Registry.
  final pulumi.Input<List<ServiceRegistryInstanceResponse>> instances;
  /// State of the Service Registry.
  final pulumi.Input<String> provisioningState;
  /// The requested resource quantity for required CPU and Memory.
  final pulumi.Input<ServiceRegistryResourceRequestsResponse> resourceRequests;

  /// Creates a new [ServiceRegistryPropertiesResponse].
  /// [instances] Collection of instances belong to Service Registry.
  /// [provisioningState] State of the Service Registry.
  /// [resourceRequests] The requested resource quantity for required CPU and Memory.
  ServiceRegistryPropertiesResponse({
    required this.instances,
    required this.provisioningState,
    required this.resourceRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instances': pulumi.Input.mapInputValue<List<ServiceRegistryInstanceResponse>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<ServiceRegistryInstanceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'resourceRequests': pulumi.Input.mapInputValue<ServiceRegistryResourceRequestsResponse, Map<String, dynamic>>(resourceRequests, (value) => value.toMap()),
    };
  }

  factory ServiceRegistryPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ServiceRegistryPropertiesResponse(
      instances: (pulumi.Input.decodeList<ServiceRegistryInstanceResponse>(map['instances'], (value) => ServiceRegistryInstanceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      resourceRequests: (ServiceRegistryResourceRequestsResponse.fromMap((map['resourceRequests'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


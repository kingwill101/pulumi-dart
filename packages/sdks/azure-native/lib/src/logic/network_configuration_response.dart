// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_service_environment_access_endpoint_response.dart';
import 'resource_reference_response.dart';

/// The network configuration.
class NetworkConfigurationResponse {
  /// The access endpoint.
  final pulumi.Input<IntegrationServiceEnvironmentAccessEndpointResponse>? accessEndpoint;
  /// The subnets.
  final pulumi.Input<List<ResourceReferenceResponse>>? subnets;
  /// Gets the virtual network address space.
  final pulumi.Input<String>? virtualNetworkAddressSpace;

  /// Creates a new [NetworkConfigurationResponse].
  /// [accessEndpoint] The access endpoint.
  /// [subnets] The subnets.
  /// [virtualNetworkAddressSpace] Gets the virtual network address space.
  NetworkConfigurationResponse({
    this.accessEndpoint,
    this.subnets,
    this.virtualNetworkAddressSpace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpoint': ?pulumi.Input.mapOptionalInputValue<IntegrationServiceEnvironmentAccessEndpointResponse, Map<String, dynamic>>(accessEndpoint, (value) => value.toMap()),
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<ResourceReferenceResponse>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetworkAddressSpace': ?virtualNetworkAddressSpace,
    };
  }

  factory NetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigurationResponse(
      accessEndpoint: map['accessEndpoint'] == null ? null : (IntegrationServiceEnvironmentAccessEndpointResponse.fromMap((map['accessEndpoint']! as Map).cast<String, dynamic>())).input(),
      subnets: map['subnets'] == null ? null : (pulumi.Input.decodeList<ResourceReferenceResponse>(map['subnets']!, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualNetworkAddressSpace: map['virtualNetworkAddressSpace'] == null ? null : (map['virtualNetworkAddressSpace']! as String).input(),
    );
  }
}


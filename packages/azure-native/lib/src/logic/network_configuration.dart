// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_service_environment_access_endpoint.dart';
import 'resource_reference.dart';

/// The network configuration.
class NetworkConfiguration {
  /// The access endpoint.
  final IntegrationServiceEnvironmentAccessEndpoint? accessEndpoint;
  /// The subnets.
  final List<ResourceReference>? subnets;
  /// Gets the virtual network address space.
  final String? virtualNetworkAddressSpace;

  /// Creates a new [NetworkConfiguration].
  /// [accessEndpoint] The access endpoint.
  /// [subnets] The subnets.
  /// [virtualNetworkAddressSpace] Gets the virtual network address space.
  NetworkConfiguration({
    this.accessEndpoint,
    this.subnets,
    this.virtualNetworkAddressSpace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpoint': ?accessEndpoint == null ? null : accessEndpoint!.toMap(),
      'subnets': ?subnets == null ? null : pulumi.Input.encodeList<ResourceReference, Map<String, dynamic>>(subnets!, (value) => value.toMap()),
      'virtualNetworkAddressSpace': ?virtualNetworkAddressSpace,
    };
  }

  factory NetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkConfiguration(
      accessEndpoint: map['accessEndpoint'] == null ? null : IntegrationServiceEnvironmentAccessEndpoint.fromMap((map['accessEndpoint'] as Map).cast<String, dynamic>()),
      subnets: map['subnets'] == null ? null : pulumi.Input.decodeList<ResourceReference>(map['subnets'], (value) => ResourceReference.fromMap((value as Map).cast<String, dynamic>())),
      virtualNetworkAddressSpace: map['virtualNetworkAddressSpace'] == null ? null : map['virtualNetworkAddressSpace'] as String,
    );
  }
}


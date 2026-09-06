// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_service_environment_access_endpoint.dart';
import 'resource_reference.dart';

/// The network configuration.
class NetworkConfiguration {
  /// The access endpoint.
  final pulumi.Input<IntegrationServiceEnvironmentAccessEndpoint?>? accessEndpoint;
  /// The subnets.
  final pulumi.Input<List<ResourceReference>?>? subnets;
  /// Gets the virtual network address space.
  final pulumi.Input<String?>? virtualNetworkAddressSpace;

  /// Creates a new [NetworkConfiguration].
  /// [accessEndpoint] The access endpoint.
  /// [subnets] The subnets.
  /// [virtualNetworkAddressSpace] Gets the virtual network address space.
  const NetworkConfiguration({
    this.accessEndpoint,
    this.subnets,
    this.virtualNetworkAddressSpace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpoint': ?pulumi.Input.mapOptionalInputValue<IntegrationServiceEnvironmentAccessEndpoint, Map<String, dynamic>>(accessEndpoint, (value) => value.toMap()),
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<ResourceReference>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<ResourceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualNetworkAddressSpace': ?virtualNetworkAddressSpace,
    };
  }

  factory NetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkConfiguration(
      accessEndpoint: (() { final guardedValue = map['accessEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationServiceEnvironmentAccessEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceReference>(guardedValue, (value) => ResourceReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualNetworkAddressSpace: (() { final guardedValue = map['virtualNetworkAddressSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

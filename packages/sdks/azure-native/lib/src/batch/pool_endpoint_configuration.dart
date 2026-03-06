// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_nat_pool.dart';

/// The endpoint configuration for a pool.
class PoolEndpointConfiguration {
  /// The maximum number of inbound NAT pools per Batch pool is 5. If the maximum number of inbound NAT pools is exceeded the request fails with HTTP status code 400. This cannot be specified if the IPAddressProvisioningType is NoPublicIPAddresses.
  final pulumi.Input<List<InboundNatPool>> inboundNatPools;

  /// Creates a new [PoolEndpointConfiguration].
  /// [inboundNatPools] The maximum number of inbound NAT pools per Batch pool is 5. If the maximum number of inbound NAT pools is exceeded the request fails with HTTP status code 400. This cannot be specified if the IPAddressProvisioningType is NoPublicIPAddresses.
  const PoolEndpointConfiguration({
    required this.inboundNatPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundNatPools': pulumi.Input.mapInputValue<List<InboundNatPool>, List<Map<String, dynamic>>>(inboundNatPools, (value) => pulumi.Input.encodeList<InboundNatPool, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PoolEndpointConfiguration.fromMap(Map<String, dynamic> map) {
    return PoolEndpointConfiguration(
      inboundNatPools: pulumi.Input.fromValue(pulumi.Input.decodeList<InboundNatPool>(map['inboundNatPools']!, (value) => InboundNatPool.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}


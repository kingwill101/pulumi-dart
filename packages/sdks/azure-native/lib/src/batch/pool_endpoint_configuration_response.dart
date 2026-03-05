// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inbound_nat_pool_response.dart';

/// The endpoint configuration for a pool.
class PoolEndpointConfigurationResponse {
  /// The maximum number of inbound NAT pools per Batch pool is 5. If the maximum number of inbound NAT pools is exceeded the request fails with HTTP status code 400. This cannot be specified if the IPAddressProvisioningType is NoPublicIPAddresses.
  final pulumi.Input<List<InboundNatPoolResponse>> inboundNatPools;

  /// Creates a new [PoolEndpointConfigurationResponse].
  /// [inboundNatPools] The maximum number of inbound NAT pools per Batch pool is 5. If the maximum number of inbound NAT pools is exceeded the request fails with HTTP status code 400. This cannot be specified if the IPAddressProvisioningType is NoPublicIPAddresses.
  PoolEndpointConfigurationResponse({
    required this.inboundNatPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundNatPools': pulumi.Input.mapInputValue<List<InboundNatPoolResponse>, List<Map<String, dynamic>>>(inboundNatPools, (value) => pulumi.Input.encodeList<InboundNatPoolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PoolEndpointConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return PoolEndpointConfigurationResponse(
      inboundNatPools: pulumi.Input.fromValue(pulumi.Input.decodeList<InboundNatPoolResponse>(map['inboundNatPools']!, (value) => InboundNatPoolResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}


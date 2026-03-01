// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_address_pool_response.dart';

class L2ServiceLoadBalancerConfigurationResponse {
  /// The list of pools of IP addresses that can be allocated to load balancer services.
  final List<IpAddressPoolResponse>? ipAddressPools;

  /// Creates a new [L2ServiceLoadBalancerConfigurationResponse].
  /// [ipAddressPools] The list of pools of IP addresses that can be allocated to load balancer services.
  L2ServiceLoadBalancerConfigurationResponse({
    this.ipAddressPools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressPools': ?ipAddressPools == null ? null : pulumi.Input.encodeList<IpAddressPoolResponse, Map<String, dynamic>>(ipAddressPools!, (value) => value.toMap()),
    };
  }

  factory L2ServiceLoadBalancerConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return L2ServiceLoadBalancerConfigurationResponse(
      ipAddressPools: map['ipAddressPools'] == null ? null : pulumi.Input.decodeList<IpAddressPoolResponse>(map['ipAddressPools'], (value) => IpAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


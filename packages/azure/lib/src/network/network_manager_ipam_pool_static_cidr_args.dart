// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_network_manager_ipam_pool_static_cidr_network_manager_ipam_pool_static_cidr_args_doc}
/// The set of arguments for NetworkManagerIpamPoolStaticCidr.
/// {@endtemplate}
/// {@macro pulumi_network_network_manager_ipam_pool_static_cidr_network_manager_ipam_pool_static_cidr_args_doc}
class NetworkManagerIpamPoolStaticCidrArgs {
  /// Specifies a list of IPv4 or IPv6 IP address prefixes which will be allocated to the Static CIDR.
  ///
  /// > **Note:** Exactly one of `address_prefixes` or `number_of_ip_addresses_to_allocate` must be specified.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// The ID of the Network Manager IP Address Management (IPAM) Pool. Changing this forces a new Network Manager IPAM Pool Static CIDR to be created.
  final pulumi.Input<String> ipamPoolId;
  /// The name which should be used for this Network Manager IPAM Pool Static CIDR. Changing this forces a new Network Manager IPAM Pool Static CIDR to be created.
  final pulumi.Input<String>? name;
  /// The number of IP addresses to allocate to the Static CIDR. The value must be a string representing a positive integer which is a positive power of 2, e.g., `"16"`.
  ///
  /// > **Note:** Exactly one of `address_prefixes` or `number_of_ip_addresses_to_allocate` must be specified.
  final pulumi.Input<String>? numberOfIpAddressesToAllocate;

  /// Creates a new [NetworkManagerIpamPoolStaticCidrArgs].
  /// [addressPrefixes] Specifies a list of IPv4 or IPv6 IP address prefixes which will be allocated to the Static CIDR.
  /// [ipamPoolId] The ID of the Network Manager IP Address Management (IPAM) Pool. Changing this forces a new Network Manager IPAM Pool Static CIDR to be created.
  /// [name] The name which should be used for this Network Manager IPAM Pool Static CIDR. Changing this forces a new Network Manager IPAM Pool Static CIDR to be created.
  /// [numberOfIpAddressesToAllocate] The number of IP addresses to allocate to the Static CIDR. The value must be a string representing a positive integer which is a positive power of 2, e.g., `"16"`.
  NetworkManagerIpamPoolStaticCidrArgs({
    List<String>? addressPrefixes,
    required String ipamPoolId,
    String? name,
    String? numberOfIpAddressesToAllocate,
  }) :
      addressPrefixes = pulumi.Input.asOptionalInput<List<String>>(addressPrefixes),
      ipamPoolId = pulumi.Input.asInput<String>(ipamPoolId),
      name = pulumi.Input.asOptionalInput<String>(name),
      numberOfIpAddressesToAllocate = pulumi.Input.asOptionalInput<String>(numberOfIpAddressesToAllocate);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'ipamPoolId': ipamPoolId,
      'name': ?name,
      'numberOfIpAddressesToAllocate': ?numberOfIpAddressesToAllocate,
    };
  }

  factory NetworkManagerIpamPoolStaticCidrArgs.fromMap(Map<String, dynamic> map) {
    return NetworkManagerIpamPoolStaticCidrArgs(
      addressPrefixes: map['addressPrefixes'] == null ? null : (map['addressPrefixes'] as List).cast<String>(),
      ipamPoolId: map['ipamPoolId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      numberOfIpAddressesToAllocate: map['numberOfIpAddressesToAllocate'] == null ? null : map['numberOfIpAddressesToAllocate'] as String,
    );
  }
}


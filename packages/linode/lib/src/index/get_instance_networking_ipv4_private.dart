// ignore_for_file: unused_element, unnecessary_cast

import 'get_instance_networking_ipv4_private_vpc_nat11.dart';

class GetInstanceNetworkingIpv4Private {
  /// The address.
  final String address;
  /// The default gateway for this address.
  final String gateway;
  /// The globally general API entity identifier for the Linode interface.
  final int interfaceId;
  /// The Linode instance's ID.
  final int linodeId;
  /// The network prefix.
  final int prefix;
  /// Whether this is a public or private IP address.
  final bool public;
  /// The reverse DNS assigned to this address.
  final String rdns;
  /// (Filterable) The Region this address resides in.
  final String region;
  /// The subnet mask.
  final String subnetMask;
  /// The type of address this is.
  final String type;
  /// IPv4 address configured as a 1:1 NAT for this Interface.
  final GetInstanceNetworkingIpv4PrivateVpcNat11 vpcNat11;

  /// Creates a new [GetInstanceNetworkingIpv4Private].
  /// [address] The address.
  /// [gateway] The default gateway for this address.
  /// [interfaceId] The globally general API entity identifier for the Linode interface.
  /// [linodeId] The Linode instance's ID.
  /// [prefix] The network prefix.
  /// [public] Whether this is a public or private IP address.
  /// [rdns] The reverse DNS assigned to this address.
  /// [region] (Filterable) The Region this address resides in.
  /// [subnetMask] The subnet mask.
  /// [type] The type of address this is.
  /// [vpcNat11] IPv4 address configured as a 1:1 NAT for this Interface.
  GetInstanceNetworkingIpv4Private({
    required this.address,
    required this.gateway,
    required this.interfaceId,
    required this.linodeId,
    required this.prefix,
    required this.public,
    required this.rdns,
    required this.region,
    required this.subnetMask,
    required this.type,
    required this.vpcNat11,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'gateway': gateway,
      'interfaceId': interfaceId,
      'linodeId': linodeId,
      'prefix': prefix,
      'public': public,
      'rdns': rdns,
      'region': region,
      'subnetMask': subnetMask,
      'type': type,
      'vpcNat11': vpcNat11.toMap(),
    };
  }

  factory GetInstanceNetworkingIpv4Private.fromMap(Map<String, dynamic> map) {
    return GetInstanceNetworkingIpv4Private(
      address: map['address'] as String,
      gateway: map['gateway'] as String,
      interfaceId: map['interfaceId'] as int,
      linodeId: map['linodeId'] as int,
      prefix: map['prefix'] as int,
      public: map['public'] as bool,
      rdns: map['rdns'] as String,
      region: map['region'] as String,
      subnetMask: map['subnetMask'] as String,
      type: map['type'] as String,
      vpcNat11: GetInstanceNetworkingIpv4PrivateVpcNat11.fromMap((map['vpcNat11'] as Map).cast<String, dynamic>()),
    );
  }
}


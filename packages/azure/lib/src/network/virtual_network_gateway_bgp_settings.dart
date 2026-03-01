// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_gateway_bgp_settings_peering_address.dart';

class VirtualNetworkGatewayBgpSettings {
  /// The Autonomous System Number (ASN) to use as part of the BGP.
  final int? asn;
  /// The weight added to routes which have been learned through BGP peering. Valid values can be between `0` and `100`.
  final int? peerWeight;
  /// A list of `peering_addresses` blocks as defined below. Only one `peering_addresses` block can be specified except when `active_active` of this Virtual Network Gateway is `true`.
  final List<VirtualNetworkGatewayBgpSettingsPeeringAddress>? peeringAddresses;

  /// Creates a new [VirtualNetworkGatewayBgpSettings].
  /// [asn] The Autonomous System Number (ASN) to use as part of the BGP.
  /// [peerWeight] The weight added to routes which have been learned through BGP peering. Valid values can be between `0` and `100`.
  /// [peeringAddresses] A list of `peering_addresses` blocks as defined below. Only one `peering_addresses` block can be specified except when `active_active` of this Virtual Network Gateway is `true`.
  VirtualNetworkGatewayBgpSettings({
    this.asn,
    this.peerWeight,
    this.peeringAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': ?asn,
      'peerWeight': ?peerWeight,
      'peeringAddresses': ?peeringAddresses == null ? null : pulumi.Input.encodeList<VirtualNetworkGatewayBgpSettingsPeeringAddress, Map<String, dynamic>>(peeringAddresses!, (value) => value.toMap()),
    };
  }

  factory VirtualNetworkGatewayBgpSettings.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayBgpSettings(
      asn: map['asn'] == null ? null : map['asn'] as int,
      peerWeight: map['peerWeight'] == null ? null : map['peerWeight'] as int,
      peeringAddresses: map['peeringAddresses'] == null ? null : pulumi.Input.decodeList<VirtualNetworkGatewayBgpSettingsPeeringAddress>(map['peeringAddresses'], (value) => VirtualNetworkGatewayBgpSettingsPeeringAddress.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


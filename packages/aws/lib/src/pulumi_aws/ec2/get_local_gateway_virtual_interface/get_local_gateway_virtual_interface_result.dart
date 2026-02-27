// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_local_gateway_virtual_interface_filter/get_local_gateway_virtual_interface_filter.dart';

/// Result data returned by getLocalGatewayVirtualInterface.
class GetLocalGatewayVirtualInterfaceResult {
  final List<GetLocalGatewayVirtualInterfaceFilter>? filters;
  final String id;

  /// Local address.
  final String localAddress;

  /// Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the EC2 Local Gateway.
  final int localBgpAsn;

  /// Identifier of the EC2 Local Gateway.
  final String localGatewayId;
  final List<String> localGatewayVirtualInterfaceIds;

  /// Peer address.
  final String peerAddress;

  /// Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the peer.
  final int peerBgpAsn;
  final String region;
  final Map<String, String> tags;

  /// Virtual Local Area Network.
  final int vlan;

  GetLocalGatewayVirtualInterfaceResult({
    this.filters,
    required this.id,
    required this.localAddress,
    required this.localBgpAsn,
    required this.localGatewayId,
    required this.localGatewayVirtualInterfaceIds,
    required this.peerAddress,
    required this.peerBgpAsn,
    required this.region,
    required this.tags,
    required this.vlan,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<
          GetLocalGatewayVirtualInterfaceFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['localAddress'] = localAddress;
    map['localBgpAsn'] = localBgpAsn;
    map['localGatewayId'] = localGatewayId;
    map['localGatewayVirtualInterfaceIds'] = localGatewayVirtualInterfaceIds;
    map['peerAddress'] = peerAddress;
    map['peerBgpAsn'] = peerBgpAsn;
    map['region'] = region;
    map['tags'] = tags;
    map['vlan'] = vlan;
    return map;
  }

  factory GetLocalGatewayVirtualInterfaceResult.fromMap(
      Map<String, dynamic> map) {
    return GetLocalGatewayVirtualInterfaceResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetLocalGatewayVirtualInterfaceFilter>(
              map['filters'],
              (value) => GetLocalGatewayVirtualInterfaceFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      localAddress: map['localAddress'] as String,
      localBgpAsn: map['localBgpAsn'] as int,
      localGatewayId: map['localGatewayId'] as String,
      localGatewayVirtualInterfaceIds:
          (map['localGatewayVirtualInterfaceIds'] as List).cast<String>(),
      peerAddress: map['peerAddress'] as String,
      peerBgpAsn: map['peerBgpAsn'] as int,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vlan: map['vlan'] as int,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_virtual_interface_filter.dart';

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

  /// Creates a new [GetLocalGatewayVirtualInterfaceResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [localAddress] Local address.
  /// [localBgpAsn] Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the EC2 Local Gateway.
  /// [localGatewayId] Identifier of the EC2 Local Gateway.
  /// [localGatewayVirtualInterfaceIds] Required.
  /// [peerAddress] Peer address.
  /// [peerBgpAsn] Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the peer.
  /// [region] Required.
  /// [tags] Required.
  /// [vlan] Virtual Local Area Network.
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
    return <String, dynamic>{
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<
              GetLocalGatewayVirtualInterfaceFilter,
              Map<String, dynamic>
            >(filters!, (value) => value.toMap()),
      'id': id,
      'localAddress': localAddress,
      'localBgpAsn': localBgpAsn,
      'localGatewayId': localGatewayId,
      'localGatewayVirtualInterfaceIds': localGatewayVirtualInterfaceIds,
      'peerAddress': peerAddress,
      'peerBgpAsn': peerBgpAsn,
      'region': region,
      'tags': tags,
      'vlan': vlan,
    };
  }

  factory GetLocalGatewayVirtualInterfaceResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLocalGatewayVirtualInterfaceResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetLocalGatewayVirtualInterfaceFilter>(
              map['filters'],
              (value) => GetLocalGatewayVirtualInterfaceFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
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

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_local_gateway_virtual_interface_filter.dart';

/// Result data returned by getLocalGatewayVirtualInterface.
class GetLocalGatewayVirtualInterfaceResult {
  final List<GetLocalGatewayVirtualInterfaceFilter>? filters;
  final String? id;
  /// Local address.
  final String? localAddress;
  /// Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the EC2 Local Gateway.
  final int? localBgpAsn;
  /// Identifier of the EC2 Local Gateway.
  final String? localGatewayId;
  /// Identifier of the EC2 Local Gateway Virtual Interface Group.
  final String? localGatewayVirtualInterfaceGroupId;
  final List<String>? localGatewayVirtualInterfaceIds;
  /// Identifier of the Outpost LAG.
  final String? outpostLagId;
  /// Peer address.
  final String? peerAddress;
  /// Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the peer.
  final int? peerBgpAsn;
  final String? region;
  final Map<String, String>? tags;
  /// Virtual Local Area Network.
  final int? vlan;

  /// Creates a new [GetLocalGatewayVirtualInterfaceResult].
  /// [filters] Optional.
  /// [id] Optional.
  /// [localAddress] Local address.
  /// [localBgpAsn] Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the EC2 Local Gateway.
  /// [localGatewayId] Identifier of the EC2 Local Gateway.
  /// [localGatewayVirtualInterfaceGroupId] Identifier of the EC2 Local Gateway Virtual Interface Group.
  /// [localGatewayVirtualInterfaceIds] Optional.
  /// [outpostLagId] Identifier of the Outpost LAG.
  /// [peerAddress] Peer address.
  /// [peerBgpAsn] Border Gateway Protocol (BGP) Autonomous System Number (ASN) of the peer.
  /// [region] Optional.
  /// [tags] Optional.
  /// [vlan] Virtual Local Area Network.
  const GetLocalGatewayVirtualInterfaceResult({
    this.filters,
    this.id,
    this.localAddress,
    this.localBgpAsn,
    this.localGatewayId,
    this.localGatewayVirtualInterfaceGroupId,
    this.localGatewayVirtualInterfaceIds,
    this.outpostLagId,
    this.peerAddress,
    this.peerBgpAsn,
    this.region,
    this.tags,
    this.vlan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLocalGatewayVirtualInterfaceFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'localAddress': ?localAddress,
      'localBgpAsn': ?localBgpAsn,
      'localGatewayId': ?localGatewayId,
      'localGatewayVirtualInterfaceGroupId': ?localGatewayVirtualInterfaceGroupId,
      'localGatewayVirtualInterfaceIds': ?localGatewayVirtualInterfaceIds,
      'outpostLagId': ?outpostLagId,
      'peerAddress': ?peerAddress,
      'peerBgpAsn': ?peerBgpAsn,
      'region': ?region,
      'tags': ?tags,
      'vlan': ?vlan,
    };
  }

  factory GetLocalGatewayVirtualInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetLocalGatewayVirtualInterfaceResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLocalGatewayVirtualInterfaceFilter>(guardedValue, (value) => GetLocalGatewayVirtualInterfaceFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localAddress: (() { final guardedValue = map['localAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localBgpAsn: (() { final guardedValue = map['localBgpAsn']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      localGatewayId: (() { final guardedValue = map['localGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localGatewayVirtualInterfaceGroupId: (() { final guardedValue = map['localGatewayVirtualInterfaceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localGatewayVirtualInterfaceIds: (() { final guardedValue = map['localGatewayVirtualInterfaceIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      outpostLagId: (() { final guardedValue = map['outpostLagId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerAddress: (() { final guardedValue = map['peerAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerBgpAsn: (() { final guardedValue = map['peerBgpAsn']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vlan: (() { final guardedValue = map['vlan']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}

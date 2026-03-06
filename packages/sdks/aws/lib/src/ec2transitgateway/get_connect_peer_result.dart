// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connect_peer_filter.dart';

/// Result data returned by getConnectPeer.
class GetConnectPeerResult {
  /// EC2 Transit Gateway Connect Peer ARN
  final String arn;
  /// BGP ASN number assigned customer device
  final String bgpAsn;
  /// The IP address assigned to customer device, which is used as BGP IP address.
  final String bgpPeerAddress;
  /// The IP addresses assigned to Transit Gateway, which are used as BGP IP addresses.
  final List<String> bgpTransitGatewayAddresses;
  final List<GetConnectPeerFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// CIDR blocks that will be used for addressing within the tunnel.
  final List<String> insideCidrBlocks;
  /// IP addressed assigned to customer device, which is used as tunnel endpoint
  final String peerAddress;
  final String region;
  /// Key-value tags for the EC2 Transit Gateway Connect Peer
  final Map<String, String> tags;
  /// The IP address assigned to Transit Gateway, which is used as tunnel endpoint.
  final String transitGatewayAddress;
  /// The Transit Gateway Connect
  final String transitGatewayAttachmentId;
  final String transitGatewayConnectPeerId;

  /// Creates a new [GetConnectPeerResult].
  /// [arn] EC2 Transit Gateway Connect Peer ARN
  /// [bgpAsn] BGP ASN number assigned customer device
  /// [bgpPeerAddress] The IP address assigned to customer device, which is used as BGP IP address.
  /// [bgpTransitGatewayAddresses] The IP addresses assigned to Transit Gateway, which are used as BGP IP addresses.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [insideCidrBlocks] CIDR blocks that will be used for addressing within the tunnel.
  /// [peerAddress] IP addressed assigned to customer device, which is used as tunnel endpoint
  /// [region] Required.
  /// [tags] Key-value tags for the EC2 Transit Gateway Connect Peer
  /// [transitGatewayAddress] The IP address assigned to Transit Gateway, which is used as tunnel endpoint.
  /// [transitGatewayAttachmentId] The Transit Gateway Connect
  /// [transitGatewayConnectPeerId] Required.
  const GetConnectPeerResult({
    required this.arn,
    required this.bgpAsn,
    required this.bgpPeerAddress,
    required this.bgpTransitGatewayAddresses,
    this.filters,
    required this.id,
    required this.insideCidrBlocks,
    required this.peerAddress,
    required this.region,
    required this.tags,
    required this.transitGatewayAddress,
    required this.transitGatewayAttachmentId,
    required this.transitGatewayConnectPeerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'bgpAsn': bgpAsn,
      'bgpPeerAddress': bgpPeerAddress,
      'bgpTransitGatewayAddresses': bgpTransitGatewayAddresses,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConnectPeerFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'insideCidrBlocks': insideCidrBlocks,
      'peerAddress': peerAddress,
      'region': region,
      'tags': tags,
      'transitGatewayAddress': transitGatewayAddress,
      'transitGatewayAttachmentId': transitGatewayAttachmentId,
      'transitGatewayConnectPeerId': transitGatewayConnectPeerId,
    };
  }

  factory GetConnectPeerResult.fromMap(Map<String, dynamic> map) {
    return GetConnectPeerResult(
      arn: map['arn'] as String,
      bgpAsn: map['bgpAsn'] as String,
      bgpPeerAddress: map['bgpPeerAddress'] as String,
      bgpTransitGatewayAddresses: (map['bgpTransitGatewayAddresses'] as List).cast<String>(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConnectPeerFilter>(guardedValue, (value) => GetConnectPeerFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      insideCidrBlocks: (map['insideCidrBlocks'] as List).cast<String>(),
      peerAddress: map['peerAddress'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayAddress: map['transitGatewayAddress'] as String,
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] as String,
      transitGatewayConnectPeerId: map['transitGatewayConnectPeerId'] as String,
    );
  }
}


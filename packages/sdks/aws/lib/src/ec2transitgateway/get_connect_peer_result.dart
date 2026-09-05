// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connect_peer_filter.dart';

/// Result data returned by getConnectPeer.
class GetConnectPeerResult {
  /// EC2 Transit Gateway Connect Peer ARN
  final String? arn;
  /// BGP ASN number assigned customer device
  final String? bgpAsn;
  /// The IP address assigned to customer device, which is used as BGP IP address.
  final String? bgpPeerAddress;
  /// The IP addresses assigned to Transit Gateway, which are used as BGP IP addresses.
  final List<String>? bgpTransitGatewayAddresses;
  final List<GetConnectPeerFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// CIDR blocks that will be used for addressing within the tunnel.
  final List<String>? insideCidrBlocks;
  /// IP addressed assigned to customer device, which is used as tunnel endpoint
  final String? peerAddress;
  final String? region;
  /// Key-value tags for the EC2 Transit Gateway Connect Peer
  final Map<String, String>? tags;
  /// The IP address assigned to Transit Gateway, which is used as tunnel endpoint.
  final String? transitGatewayAddress;
  /// The Transit Gateway Connect
  final String? transitGatewayAttachmentId;
  final String? transitGatewayConnectPeerId;

  /// Creates a new [GetConnectPeerResult].
  /// [arn] EC2 Transit Gateway Connect Peer ARN
  /// [bgpAsn] BGP ASN number assigned customer device
  /// [bgpPeerAddress] The IP address assigned to customer device, which is used as BGP IP address.
  /// [bgpTransitGatewayAddresses] The IP addresses assigned to Transit Gateway, which are used as BGP IP addresses.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [insideCidrBlocks] CIDR blocks that will be used for addressing within the tunnel.
  /// [peerAddress] IP addressed assigned to customer device, which is used as tunnel endpoint
  /// [region] Optional.
  /// [tags] Key-value tags for the EC2 Transit Gateway Connect Peer
  /// [transitGatewayAddress] The IP address assigned to Transit Gateway, which is used as tunnel endpoint.
  /// [transitGatewayAttachmentId] The Transit Gateway Connect
  /// [transitGatewayConnectPeerId] Optional.
  const GetConnectPeerResult({
    this.arn,
    this.bgpAsn,
    this.bgpPeerAddress,
    this.bgpTransitGatewayAddresses,
    this.filters,
    this.id,
    this.insideCidrBlocks,
    this.peerAddress,
    this.region,
    this.tags,
    this.transitGatewayAddress,
    this.transitGatewayAttachmentId,
    this.transitGatewayConnectPeerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'bgpAsn': ?bgpAsn,
      'bgpPeerAddress': ?bgpPeerAddress,
      'bgpTransitGatewayAddresses': ?bgpTransitGatewayAddresses,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConnectPeerFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'insideCidrBlocks': ?insideCidrBlocks,
      'peerAddress': ?peerAddress,
      'region': ?region,
      'tags': ?tags,
      'transitGatewayAddress': ?transitGatewayAddress,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayConnectPeerId': ?transitGatewayConnectPeerId,
    };
  }

  factory GetConnectPeerResult.fromMap(Map<String, dynamic> map) {
    return GetConnectPeerResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bgpAsn: (() { final guardedValue = map['bgpAsn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bgpPeerAddress: (() { final guardedValue = map['bgpPeerAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bgpTransitGatewayAddresses: (() { final guardedValue = map['bgpTransitGatewayAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConnectPeerFilter>(guardedValue, (value) => GetConnectPeerFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      insideCidrBlocks: (() { final guardedValue = map['insideCidrBlocks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      peerAddress: (() { final guardedValue = map['peerAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      transitGatewayAddress: (() { final guardedValue = map['transitGatewayAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitGatewayAttachmentId: (() { final guardedValue = map['transitGatewayAttachmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitGatewayConnectPeerId: (() { final guardedValue = map['transitGatewayConnectPeerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

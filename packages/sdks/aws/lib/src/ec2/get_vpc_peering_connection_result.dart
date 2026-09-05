// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_peering_connection_cidr_block_set.dart';
import 'get_vpc_peering_connection_filter.dart';
import 'get_vpc_peering_connection_ipv6_cidr_block_set.dart';
import 'get_vpc_peering_connection_peer_cidr_block_set.dart';
import 'get_vpc_peering_connection_peer_ipv6_cidr_block_set.dart';

/// Result data returned by getVpcPeeringConnection.
class GetVpcPeeringConnectionResult {
  /// Configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the accepter VPC.
  final Map<String, bool>? accepter;
  /// CIDR block associated to the VPC of the specific VPC Peering Connection.
  final String? cidrBlock;
  /// List of objects with IPv4 CIDR blocks of the requester VPC.
  final List<GetVpcPeeringConnectionCidrBlockSet>? cidrBlockSets;
  final List<GetVpcPeeringConnectionFilter>? filters;
  final String? id;
  /// List of objects with IPv6 CIDR blocks of the requester VPC.
  final List<GetVpcPeeringConnectionIpv6CidrBlockSet>? ipv6CidrBlockSets;
  final String? ownerId;
  final String? peerCidrBlock;
  /// List of objects with IPv4 CIDR blocks of the accepter VPC.
  final List<GetVpcPeeringConnectionPeerCidrBlockSet>? peerCidrBlockSets;
  /// List of objects with IPv6 CIDR blocks of the accepter VPC.
  final List<GetVpcPeeringConnectionPeerIpv6CidrBlockSet>? peerIpv6CidrBlockSets;
  final String? peerOwnerId;
  /// Region of the accepter VPC.
  final String? peerRegion;
  final String? peerVpcId;
  /// (**Deprecated**) Region of the requester VPC. Use `requesterRegion` instead.
  final String? region;
  /// Configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the requester VPC.
  final Map<String, bool>? requester;
  /// Region of the requester VPC.
  final String? requesterRegion;
  final String? status;
  final Map<String, String>? tags;
  final String? vpcId;

  /// Creates a new [GetVpcPeeringConnectionResult].
  /// [accepter] Configuration block that describes [VPC Peering Connection]
  /// [cidrBlock] CIDR block associated to the VPC of the specific VPC Peering Connection.
  /// [cidrBlockSets] List of objects with IPv4 CIDR blocks of the requester VPC.
  /// [filters] Optional.
  /// [id] Optional.
  /// [ipv6CidrBlockSets] List of objects with IPv6 CIDR blocks of the requester VPC.
  /// [ownerId] Optional.
  /// [peerCidrBlock] Optional.
  /// [peerCidrBlockSets] List of objects with IPv4 CIDR blocks of the accepter VPC.
  /// [peerIpv6CidrBlockSets] List of objects with IPv6 CIDR blocks of the accepter VPC.
  /// [peerOwnerId] Optional.
  /// [peerRegion] Region of the accepter VPC.
  /// [peerVpcId] Optional.
  /// [region] (**Deprecated**) Region of the requester VPC. Use `requesterRegion` instead.
  /// [requester] Configuration block that describes [VPC Peering Connection]
  /// [requesterRegion] Region of the requester VPC.
  /// [status] Optional.
  /// [tags] Optional.
  /// [vpcId] Optional.
  const GetVpcPeeringConnectionResult({
    this.accepter,
    this.cidrBlock,
    this.cidrBlockSets,
    this.filters,
    this.id,
    this.ipv6CidrBlockSets,
    this.ownerId,
    this.peerCidrBlock,
    this.peerCidrBlockSets,
    this.peerIpv6CidrBlockSets,
    this.peerOwnerId,
    this.peerRegion,
    this.peerVpcId,
    this.region,
    this.requester,
    this.requesterRegion,
    this.status,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accepter': ?accepter,
      'cidrBlock': ?cidrBlock,
      'cidrBlockSets': ?(() { final guardedValue = cidrBlockSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcPeeringConnectionCidrBlockSet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcPeeringConnectionFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipv6CidrBlockSets': ?(() { final guardedValue = ipv6CidrBlockSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcPeeringConnectionIpv6CidrBlockSet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ownerId': ?ownerId,
      'peerCidrBlock': ?peerCidrBlock,
      'peerCidrBlockSets': ?(() { final guardedValue = peerCidrBlockSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcPeeringConnectionPeerCidrBlockSet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'peerIpv6CidrBlockSets': ?(() { final guardedValue = peerIpv6CidrBlockSets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcPeeringConnectionPeerIpv6CidrBlockSet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'peerOwnerId': ?peerOwnerId,
      'peerRegion': ?peerRegion,
      'peerVpcId': ?peerVpcId,
      'region': ?region,
      'requester': ?requester,
      'requesterRegion': ?requesterRegion,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetVpcPeeringConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringConnectionResult(
      accepter: (() { final guardedValue = map['accepter']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, bool>(); })(),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cidrBlockSets: (() { final guardedValue = map['cidrBlockSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcPeeringConnectionCidrBlockSet>(guardedValue, (value) => GetVpcPeeringConnectionCidrBlockSet.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcPeeringConnectionFilter>(guardedValue, (value) => GetVpcPeeringConnectionFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6CidrBlockSets: (() { final guardedValue = map['ipv6CidrBlockSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcPeeringConnectionIpv6CidrBlockSet>(guardedValue, (value) => GetVpcPeeringConnectionIpv6CidrBlockSet.fromMap((value as Map).cast<String, dynamic>())); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerCidrBlock: (() { final guardedValue = map['peerCidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerCidrBlockSets: (() { final guardedValue = map['peerCidrBlockSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcPeeringConnectionPeerCidrBlockSet>(guardedValue, (value) => GetVpcPeeringConnectionPeerCidrBlockSet.fromMap((value as Map).cast<String, dynamic>())); })(),
      peerIpv6CidrBlockSets: (() { final guardedValue = map['peerIpv6CidrBlockSets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcPeeringConnectionPeerIpv6CidrBlockSet>(guardedValue, (value) => GetVpcPeeringConnectionPeerIpv6CidrBlockSet.fromMap((value as Map).cast<String, dynamic>())); })(),
      peerOwnerId: (() { final guardedValue = map['peerOwnerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerRegion: (() { final guardedValue = map['peerRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerVpcId: (() { final guardedValue = map['peerVpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requester: (() { final guardedValue = map['requester']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, bool>(); })(),
      requesterRegion: (() { final guardedValue = map['requesterRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

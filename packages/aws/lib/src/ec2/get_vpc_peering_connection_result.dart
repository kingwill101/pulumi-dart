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
  final Map<String, bool> accepter;

  /// CIDR block associated to the VPC of the specific VPC Peering Connection.
  final String cidrBlock;

  /// List of objects with IPv4 CIDR blocks of the requester VPC.
  final List<GetVpcPeeringConnectionCidrBlockSet> cidrBlockSets;
  final List<GetVpcPeeringConnectionFilter>? filters;
  final String id;

  /// List of objects with IPv6 CIDR blocks of the requester VPC.
  final List<GetVpcPeeringConnectionIpv6CidrBlockSet> ipv6CidrBlockSets;
  final String ownerId;
  final String peerCidrBlock;

  /// List of objects with IPv4 CIDR blocks of the accepter VPC.
  final List<GetVpcPeeringConnectionPeerCidrBlockSet> peerCidrBlockSets;

  /// List of objects with IPv6 CIDR blocks of the accepter VPC.
  final List<GetVpcPeeringConnectionPeerIpv6CidrBlockSet> peerIpv6CidrBlockSets;
  final String peerOwnerId;

  /// Region of the accepter VPC.
  final String peerRegion;
  final String peerVpcId;

  /// (**Deprecated**) Region of the requester VPC. Use `requester_region` instead.
  final String region;

  /// Configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the requester VPC.
  final Map<String, bool> requester;

  /// Region of the requester VPC.
  final String requesterRegion;
  final String status;
  final Map<String, String> tags;
  final String vpcId;

  /// Creates a new [GetVpcPeeringConnectionResult].
  /// [accepter] Configuration block that describes [VPC Peering Connection]
  /// [cidrBlock] CIDR block associated to the VPC of the specific VPC Peering Connection.
  /// [cidrBlockSets] List of objects with IPv4 CIDR blocks of the requester VPC.
  /// [filters] Optional.
  /// [id] Required.
  /// [ipv6CidrBlockSets] List of objects with IPv6 CIDR blocks of the requester VPC.
  /// [ownerId] Required.
  /// [peerCidrBlock] Required.
  /// [peerCidrBlockSets] List of objects with IPv4 CIDR blocks of the accepter VPC.
  /// [peerIpv6CidrBlockSets] List of objects with IPv6 CIDR blocks of the accepter VPC.
  /// [peerOwnerId] Required.
  /// [peerRegion] Region of the accepter VPC.
  /// [peerVpcId] Required.
  /// [region] (**Deprecated**) Region of the requester VPC. Use `requester_region` instead.
  /// [requester] Configuration block that describes [VPC Peering Connection]
  /// [requesterRegion] Region of the requester VPC.
  /// [status] Required.
  /// [tags] Required.
  /// [vpcId] Required.
  GetVpcPeeringConnectionResult({
    required this.accepter,
    required this.cidrBlock,
    required this.cidrBlockSets,
    this.filters,
    required this.id,
    required this.ipv6CidrBlockSets,
    required this.ownerId,
    required this.peerCidrBlock,
    required this.peerCidrBlockSets,
    required this.peerIpv6CidrBlockSets,
    required this.peerOwnerId,
    required this.peerRegion,
    required this.peerVpcId,
    required this.region,
    required this.requester,
    required this.requesterRegion,
    required this.status,
    required this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accepter': accepter,
      'cidrBlock': cidrBlock,
      'cidrBlockSets':
          pulumi.Input.encodeList<
            GetVpcPeeringConnectionCidrBlockSet,
            Map<String, dynamic>
          >(cidrBlockSets, (value) => value.toMap()),
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<
              GetVpcPeeringConnectionFilter,
              Map<String, dynamic>
            >(filters!, (value) => value.toMap()),
      'id': id,
      'ipv6CidrBlockSets':
          pulumi.Input.encodeList<
            GetVpcPeeringConnectionIpv6CidrBlockSet,
            Map<String, dynamic>
          >(ipv6CidrBlockSets, (value) => value.toMap()),
      'ownerId': ownerId,
      'peerCidrBlock': peerCidrBlock,
      'peerCidrBlockSets':
          pulumi.Input.encodeList<
            GetVpcPeeringConnectionPeerCidrBlockSet,
            Map<String, dynamic>
          >(peerCidrBlockSets, (value) => value.toMap()),
      'peerIpv6CidrBlockSets':
          pulumi.Input.encodeList<
            GetVpcPeeringConnectionPeerIpv6CidrBlockSet,
            Map<String, dynamic>
          >(peerIpv6CidrBlockSets, (value) => value.toMap()),
      'peerOwnerId': peerOwnerId,
      'peerRegion': peerRegion,
      'peerVpcId': peerVpcId,
      'region': region,
      'requester': requester,
      'requesterRegion': requesterRegion,
      'status': status,
      'tags': tags,
      'vpcId': vpcId,
    };
  }

  factory GetVpcPeeringConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringConnectionResult(
      accepter: (map['accepter'] as Map).cast<String, bool>(),
      cidrBlock: map['cidrBlock'] as String,
      cidrBlockSets:
          pulumi.Input.decodeList<GetVpcPeeringConnectionCidrBlockSet>(
            map['cidrBlockSets'],
            (value) => GetVpcPeeringConnectionCidrBlockSet.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetVpcPeeringConnectionFilter>(
              map['filters'],
              (value) => GetVpcPeeringConnectionFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] as String,
      ipv6CidrBlockSets:
          pulumi.Input.decodeList<GetVpcPeeringConnectionIpv6CidrBlockSet>(
            map['ipv6CidrBlockSets'],
            (value) => GetVpcPeeringConnectionIpv6CidrBlockSet.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      ownerId: map['ownerId'] as String,
      peerCidrBlock: map['peerCidrBlock'] as String,
      peerCidrBlockSets:
          pulumi.Input.decodeList<GetVpcPeeringConnectionPeerCidrBlockSet>(
            map['peerCidrBlockSets'],
            (value) => GetVpcPeeringConnectionPeerCidrBlockSet.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      peerIpv6CidrBlockSets:
          pulumi.Input.decodeList<GetVpcPeeringConnectionPeerIpv6CidrBlockSet>(
            map['peerIpv6CidrBlockSets'],
            (value) => GetVpcPeeringConnectionPeerIpv6CidrBlockSet.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      peerOwnerId: map['peerOwnerId'] as String,
      peerRegion: map['peerRegion'] as String,
      peerVpcId: map['peerVpcId'] as String,
      region: map['region'] as String,
      requester: (map['requester'] as Map).cast<String, bool>(),
      requesterRegion: map['requesterRegion'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_peering_connection_filter.dart';

/// {@template pulumi_ec2_get_vpc_peering_connection_get_vpc_peering_connection_args_doc}
/// Arguments for getVpcPeeringConnection.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_vpc_peering_connection_get_vpc_peering_connection_args_doc}
class GetVpcPeeringConnectionArgs {
  /// Primary CIDR block of the requester VPC of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String>? cidrBlock;
  /// Custom filter block as described below.
  final pulumi.Input<List<GetVpcPeeringConnectionFilter>>? filters;
  /// ID of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String>? id;
  /// AWS account ID of the owner of the requester VPC of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String>? ownerId;
  /// Primary CIDR block of the accepter VPC of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String>? peerCidrBlock;
  /// AWS account ID of the owner of the accepter VPC of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String>? peerOwnerId;
  /// ID of the accepter VPC of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String>? peerVpcId;
  /// Status of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String>? status;
  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired VPC Peering Connection.
  ///
  /// The arguments of this data source act as filters for querying the available VPC peering connection.
  /// The given filters must match exactly one VPC peering connection whose data will be exported as attributes.
  final pulumi.Input<Map<String, String>>? tags;
  /// ID of the requester VPC of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetVpcPeeringConnectionArgs].
  /// [cidrBlock] Primary CIDR block of the requester VPC of the specific VPC Peering Connection to retrieve.
  /// [filters] Custom filter block as described below.
  /// [id] ID of the specific VPC Peering Connection to retrieve.
  /// [ownerId] AWS account ID of the owner of the requester VPC of the specific VPC Peering Connection to retrieve.
  /// [peerCidrBlock] Primary CIDR block of the accepter VPC of the specific VPC Peering Connection to retrieve.
  /// [peerOwnerId] AWS account ID of the owner of the accepter VPC of the specific VPC Peering Connection to retrieve.
  /// [peerVpcId] ID of the accepter VPC of the specific VPC Peering Connection to retrieve.
  /// [status] Status of the specific VPC Peering Connection to retrieve.
  /// [tags] Map of tags, each pair of which must exactly match
  /// [vpcId] ID of the requester VPC of the specific VPC Peering Connection to retrieve.
  GetVpcPeeringConnectionArgs({
    this.cidrBlock,
    this.filters,
    this.id,
    this.ownerId,
    this.peerCidrBlock,
    this.peerOwnerId,
    this.peerVpcId,
    this.status,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVpcPeeringConnectionFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVpcPeeringConnectionFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'ownerId': ?ownerId,
      'peerCidrBlock': ?peerCidrBlock,
      'peerOwnerId': ?peerOwnerId,
      'peerVpcId': ?peerVpcId,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetVpcPeeringConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringConnectionArgs(
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock'] as String).input(),
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetVpcPeeringConnectionFilter>(map['filters'], (value) => GetVpcPeeringConnectionFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      ownerId: map['ownerId'] == null ? null : (map['ownerId'] as String).input(),
      peerCidrBlock: map['peerCidrBlock'] == null ? null : (map['peerCidrBlock'] as String).input(),
      peerOwnerId: map['peerOwnerId'] == null ? null : (map['peerOwnerId'] as String).input(),
      peerVpcId: map['peerVpcId'] == null ? null : (map['peerVpcId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}


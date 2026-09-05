// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_peering_connection_filter.dart';

/// {@template pulumi_ec2_get_vpc_peering_connection_get_vpc_peering_connection_args_doc}
/// Arguments for getVpcPeeringConnection.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_vpc_peering_connection_get_vpc_peering_connection_args_doc}
class GetVpcPeeringConnectionArgs {
  /// Primary CIDR block of the requester VPC of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String?>? cidrBlock;
  /// Custom filter block as described below.
  final pulumi.Input<List<GetVpcPeeringConnectionFilter>?>? filters;
  /// ID of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String?>? id;
  /// AWS account ID of the owner of the requester VPC of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String?>? ownerId;
  /// Primary CIDR block of the accepter VPC of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String?>? peerCidrBlock;
  /// AWS account ID of the owner of the accepter VPC of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String?>? peerOwnerId;
  /// ID of the accepter VPC of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String?>? peerVpcId;
  /// Status of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String?>? status;
  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired VPC Peering Connection.
  ///
  /// The arguments of this data source act as filters for querying the available VPC peering connection.
  /// The given filters must match exactly one VPC peering connection whose data will be exported as attributes.
  final pulumi.Input<Map<String, String>?>? tags;
  /// ID of the requester VPC of the specific VPC Peering Connection to retrieve.
  final pulumi.Input<String?>? vpcId;

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
  const GetVpcPeeringConnectionArgs({
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
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpcPeeringConnectionFilter>(guardedValue, (value) => GetVpcPeeringConnectionFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerCidrBlock: (() { final guardedValue = map['peerCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerOwnerId: (() { final guardedValue = map['peerOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerVpcId: (() { final guardedValue = map['peerVpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

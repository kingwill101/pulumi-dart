// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_vpc_peering_connection_filter/get_vpc_peering_connection_filter.dart';

/// Arguments for getVpcPeeringConnection.
class GetVpcPeeringConnectionArgs {
  /// Primary CIDR block of the requester VPC of the specific VPC Peering Connection to retrieve.
  final Input<String>? cidrBlock;

  /// Custom filter block as described below.
  final Input<List<GetVpcPeeringConnectionFilter>>? filters;

  /// ID of the specific VPC Peering Connection to retrieve.
  final Input<String>? id;

  /// AWS account ID of the owner of the requester VPC of the specific VPC Peering Connection to retrieve.
  final Input<String>? ownerId;

  /// Primary CIDR block of the accepter VPC of the specific VPC Peering Connection to retrieve.
  final Input<String>? peerCidrBlock;

  /// AWS account ID of the owner of the accepter VPC of the specific VPC Peering Connection to retrieve.
  final Input<String>? peerOwnerId;

  /// ID of the accepter VPC of the specific VPC Peering Connection to retrieve.
  final Input<String>? peerVpcId;

  /// Status of the specific VPC Peering Connection to retrieve.
  final Input<String>? status;

  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired VPC Peering Connection.
  ///
  /// The arguments of this data source act as filters for querying the available VPC peering connection.
  /// The given filters must match exactly one VPC peering connection whose data will be exported as attributes.
  final Input<Map<String, String>>? tags;

  /// ID of the requester VPC of the specific VPC Peering Connection to retrieve.
  final Input<String>? vpcId;

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
    final map = <String, dynamic>{};
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetVpcPeeringConnectionFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetVpcPeeringConnectionFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final ownerIdValue = ownerId;
    if (ownerIdValue != null) {
      map['ownerId'] = ownerIdValue;
    }
    final peerCidrBlockValue = peerCidrBlock;
    if (peerCidrBlockValue != null) {
      map['peerCidrBlock'] = peerCidrBlockValue;
    }
    final peerOwnerIdValue = peerOwnerId;
    if (peerOwnerIdValue != null) {
      map['peerOwnerId'] = peerOwnerIdValue;
    }
    final peerVpcIdValue = peerVpcId;
    if (peerVpcIdValue != null) {
      map['peerVpcId'] = peerVpcIdValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory GetVpcPeeringConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcPeeringConnectionArgs(
      cidrBlock: Input.asOptionalInput<String>(map['cidrBlock']),
      filters: Input.asOptionalInput<List<GetVpcPeeringConnectionFilter>>(
          map['filters']),
      id: Input.asOptionalInput<String>(map['id']),
      ownerId: Input.asOptionalInput<String>(map['ownerId']),
      peerCidrBlock: Input.asOptionalInput<String>(map['peerCidrBlock']),
      peerOwnerId: Input.asOptionalInput<String>(map['peerOwnerId']),
      peerVpcId: Input.asOptionalInput<String>(map['peerVpcId']),
      status: Input.asOptionalInput<String>(map['status']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: Input.asOptionalInput<String>(map['vpcId']),
    );
  }
}

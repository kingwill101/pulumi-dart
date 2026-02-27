// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../vpc_peering_connection_accepter/vpc_peering_connection_accepter.dart';
import '../vpc_peering_connection_requester/vpc_peering_connection_requester.dart';

/// The set of arguments for VpcPeeringConnection.
class VpcPeeringConnectionArgs {
  /// An optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that accepts
  /// the peering connection (a maximum of one).
  final pulumi.Input<VpcPeeringConnectionAccepter>? accepter;

  /// Accept the peering (both VPCs need to be in the same AWS account and region).
  final pulumi.Input<bool>? autoAccept;

  /// The AWS account ID of the target peer VPC.
  /// Defaults to the account ID the [AWS provider][1] is currently connected to, so must be managed if connecting cross-account.
  final pulumi.Input<String>? peerOwnerId;

  /// The region of the accepter VPC of the VPC Peering Connection. `auto_accept` must be `false`,
  /// and use the `aws.ec2.VpcPeeringConnectionAccepter` to manage the accepter side.
  final pulumi.Input<String>? peerRegion;

  /// The ID of the target VPC with which you are creating the VPC Peering Connection.
  final pulumi.Input<String> peerVpcId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that requests
  /// the peering connection (a maximum of one).
  final pulumi.Input<VpcPeeringConnectionRequester>? requester;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the requester VPC.
  final pulumi.Input<String> vpcId;

  VpcPeeringConnectionArgs({
    this.accepter,
    this.autoAccept,
    this.peerOwnerId,
    this.peerRegion,
    required this.peerVpcId,
    this.region,
    this.requester,
    this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accepterValue = accepter;
    if (accepterValue != null) {
      map['accepter'] = pulumi.Input.mapOptionalInputValue<
          VpcPeeringConnectionAccepter,
          Map<String, dynamic>>(accepterValue, (value) => value.toMap());
    }
    final autoAcceptValue = autoAccept;
    if (autoAcceptValue != null) {
      map['autoAccept'] = autoAcceptValue;
    }
    final peerOwnerIdValue = peerOwnerId;
    if (peerOwnerIdValue != null) {
      map['peerOwnerId'] = peerOwnerIdValue;
    }
    final peerRegionValue = peerRegion;
    if (peerRegionValue != null) {
      map['peerRegion'] = peerRegionValue;
    }
    map['peerVpcId'] = peerVpcId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requesterValue = requester;
    if (requesterValue != null) {
      map['requester'] = pulumi.Input.mapOptionalInputValue<
          VpcPeeringConnectionRequester,
          Map<String, dynamic>>(requesterValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory VpcPeeringConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectionArgs(
      accepter: pulumi.Input.asOptionalInput<VpcPeeringConnectionAccepter>(
          map['accepter']),
      autoAccept: pulumi.Input.asOptionalInput<bool>(map['autoAccept']),
      peerOwnerId: pulumi.Input.asOptionalInput<String>(map['peerOwnerId']),
      peerRegion: pulumi.Input.asOptionalInput<String>(map['peerRegion']),
      peerVpcId: pulumi.Input.asInput<String>(map['peerVpcId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      requester: pulumi.Input.asOptionalInput<VpcPeeringConnectionRequester>(
          map['requester']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: pulumi.Input.asInput<String>(map['vpcId']),
    );
  }
}

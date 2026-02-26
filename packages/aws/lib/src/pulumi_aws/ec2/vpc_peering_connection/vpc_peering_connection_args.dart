// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpc_peering_connection_accepter/vpc_peering_connection_accepter.dart';
import '../vpc_peering_connection_requester/vpc_peering_connection_requester.dart';

/// The set of arguments for VpcPeeringConnection.
class VpcPeeringConnectionArgs {
  /// An optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that accepts
  /// the peering connection (a maximum of one).
  final Input<VpcPeeringConnectionAccepter>? accepter;

  /// Accept the peering (both VPCs need to be in the same AWS account and region).
  final Input<bool>? autoAccept;

  /// The AWS account ID of the target peer VPC.
  /// Defaults to the account ID the [AWS provider][1] is currently connected to, so must be managed if connecting cross-account.
  final Input<String>? peerOwnerId;

  /// The region of the accepter VPC of the VPC Peering Connection. <span pulumi-lang-nodejs="`autoAccept`" pulumi-lang-dotnet="`AutoAccept`" pulumi-lang-go="`autoAccept`" pulumi-lang-python="`auto_accept`" pulumi-lang-yaml="`autoAccept`" pulumi-lang-java="`autoAccept`">`auto_accept`</span> must be <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>,
  /// and use the <span pulumi-lang-nodejs="`aws.ec2.VpcPeeringConnectionAccepter`" pulumi-lang-dotnet="`aws.ec2.VpcPeeringConnectionAccepter`" pulumi-lang-go="`ec2.VpcPeeringConnectionAccepter`" pulumi-lang-python="`ec2.VpcPeeringConnectionAccepter`" pulumi-lang-yaml="`aws.ec2.VpcPeeringConnectionAccepter`" pulumi-lang-java="`aws.ec2.VpcPeeringConnectionAccepter`">`aws.ec2.VpcPeeringConnectionAccepter`</span> to manage the accepter side.
  final Input<String>? peerRegion;

  /// The ID of the target VPC with which you are creating the VPC Peering Connection.
  final Input<String> peerVpcId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that requests
  /// the peering connection (a maximum of one).
  final Input<VpcPeeringConnectionRequester>? requester;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The ID of the requester VPC.
  final Input<String> vpcId;

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
      map['accepter'] = Input.mapOptionalInputValue<
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
      map['requester'] = Input.mapOptionalInputValue<
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
      accepter:
          Input.asOptionalInput<VpcPeeringConnectionAccepter>(map['accepter']),
      autoAccept: Input.asOptionalInput<bool>(map['autoAccept']),
      peerOwnerId: Input.asOptionalInput<String>(map['peerOwnerId']),
      peerRegion: Input.asOptionalInput<String>(map['peerRegion']),
      peerVpcId: Input.asInput<String>(map['peerVpcId']),
      region: Input.asOptionalInput<String>(map['region']),
      requester: Input.asOptionalInput<VpcPeeringConnectionRequester>(
          map['requester']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}

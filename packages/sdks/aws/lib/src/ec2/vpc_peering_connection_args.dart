// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_connection_accepter.dart';
import 'vpc_peering_connection_requester.dart';

/// {@template pulumi_ec2_vpc_peering_connection_vpc_peering_connection_args_doc}
/// The set of arguments for VpcPeeringConnection.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_peering_connection_vpc_peering_connection_args_doc}
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

  /// Creates a new [VpcPeeringConnectionArgs].
  /// [accepter] An optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that accepts
  /// [autoAccept] Accept the peering (both VPCs need to be in the same AWS account and region).
  /// [peerOwnerId] The AWS account ID of the target peer VPC.
  /// [peerRegion] The region of the accepter VPC of the VPC Peering Connection. `auto_accept` must be `false`,
  /// [peerVpcId] The ID of the target VPC with which you are creating the VPC Peering Connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requester] A optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that requests
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] The ID of the requester VPC.
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
    return <String, dynamic>{
      'accepter':
          ?pulumi.Input.mapOptionalInputValue<
            VpcPeeringConnectionAccepter,
            Map<String, dynamic>
          >(accepter, (value) => value.toMap()),
      'autoAccept': ?autoAccept,
      'peerOwnerId': ?peerOwnerId,
      'peerRegion': ?peerRegion,
      'peerVpcId': peerVpcId,
      'region': ?region,
      'requester':
          ?pulumi.Input.mapOptionalInputValue<
            VpcPeeringConnectionRequester,
            Map<String, dynamic>
          >(requester, (value) => value.toMap()),
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory VpcPeeringConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectionArgs(
      accepter: (() {
        final guardedValue = map['accepter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VpcPeeringConnectionAccepter.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      autoAccept: (() {
        final guardedValue = map['autoAccept'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      peerOwnerId: (() {
        final guardedValue = map['peerOwnerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerRegion: (() {
        final guardedValue = map['peerRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      peerVpcId: pulumi.Input.fromValue(map['peerVpcId'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      requester: (() {
        final guardedValue = map['requester'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VpcPeeringConnectionRequester.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_connection_accepter.dart';
import 'vpc_peering_connection_requester.dart';

/// {@template pulumi_ec2_vpc_peering_connection_vpc_peering_connection_args_doc}
/// The set of arguments for VpcPeeringConnection.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_peering_connection_vpc_peering_connection_args_doc}
class VpcPeeringConnectionArgs {
  /// Configuration block for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to set for the VPC that accepts the peering connection (a maximum of one). See `accepter` Block below.
  final pulumi.Input<VpcPeeringConnectionAccepter?>? accepter;
  /// Whether to accept the peering (both VPCs need to be in the same AWS account and region).
  final pulumi.Input<bool?>? autoAccept;
  /// AWS account ID of the target peer VPC. Defaults to the account ID the AWS provider is currently connected to, so must be managed if connecting cross-account.
  final pulumi.Input<String?>? peerOwnerId;
  /// Region of the accepter VPC of the VPC Peering Connection. `autoAccept` must be `false`, and use the `aws.ec2.VpcPeeringConnectionAccepter` to manage the accepter side.
  final pulumi.Input<String?>? peerRegion;
  /// ID of the target VPC with which you are creating the VPC Peering Connection.
  final pulumi.Input<String> peerVpcId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration block for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to set for the VPC that requests the peering connection (a maximum of one). See `requester` Block below.
  final pulumi.Input<VpcPeeringConnectionRequester?>? requester;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// ID of the requester VPC.
  final pulumi.Input<String> vpcId;

  /// Creates a new [VpcPeeringConnectionArgs].
  /// [accepter] Configuration block for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to set for the VPC that accepts the peering connection (a maximum of one). See `accepter` Block below.
  /// [autoAccept] Whether to accept the peering (both VPCs need to be in the same AWS account and region).
  /// [peerOwnerId] AWS account ID of the target peer VPC. Defaults to the account ID the AWS provider is currently connected to, so must be managed if connecting cross-account.
  /// [peerRegion] Region of the accepter VPC of the VPC Peering Connection. `autoAccept` must be `false`, and use the `aws.ec2.VpcPeeringConnectionAccepter` to manage the accepter side.
  /// [peerVpcId] ID of the target VPC with which you are creating the VPC Peering Connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requester] Configuration block for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to set for the VPC that requests the peering connection (a maximum of one). See `requester` Block below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] ID of the requester VPC.
  const VpcPeeringConnectionArgs({
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
      'accepter': ?pulumi.Input.mapOptionalInputValue<VpcPeeringConnectionAccepter, Map<String, dynamic>>(accepter, (value) => value.toMap()),
      'autoAccept': ?autoAccept,
      'peerOwnerId': ?peerOwnerId,
      'peerRegion': ?peerRegion,
      'peerVpcId': peerVpcId,
      'region': ?region,
      'requester': ?pulumi.Input.mapOptionalInputValue<VpcPeeringConnectionRequester, Map<String, dynamic>>(requester, (value) => value.toMap()),
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory VpcPeeringConnectionArgs.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectionArgs(
      accepter: (() { final guardedValue = map['accepter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcPeeringConnectionAccepter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoAccept: (() { final guardedValue = map['autoAccept']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      peerOwnerId: (() { final guardedValue = map['peerOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerRegion: (() { final guardedValue = map['peerRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerVpcId: pulumi.Input.fromValue(map['peerVpcId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requester: (() { final guardedValue = map['requester']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcPeeringConnectionRequester.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

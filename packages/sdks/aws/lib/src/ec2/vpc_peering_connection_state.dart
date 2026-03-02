// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_connection_accepter.dart';
import 'vpc_peering_connection_requester.dart';

/// Input properties used for looking up and filtering VpcPeeringConnection resources.
class VpcPeeringConnectionState {
  /// The status of the VPC Peering Connection request.
  final pulumi.Input<String>? acceptStatus;
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
  final pulumi.Input<String>? peerVpcId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that requests
  /// the peering connection (a maximum of one).
  final pulumi.Input<VpcPeeringConnectionRequester>? requester;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ID of the requester VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcPeeringConnectionState].
  /// [acceptStatus] The status of the VPC Peering Connection request.
  /// [accepter] An optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that accepts
  /// [autoAccept] Accept the peering (both VPCs need to be in the same AWS account and region).
  /// [peerOwnerId] The AWS account ID of the target peer VPC.
  /// [peerRegion] The region of the accepter VPC of the VPC Peering Connection. `auto_accept` must be `false`,
  /// [peerVpcId] The ID of the target VPC with which you are creating the VPC Peering Connection.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requester] A optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that requests
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] The ID of the requester VPC.
  VpcPeeringConnectionState({
    this.acceptStatus,
    this.accepter,
    this.autoAccept,
    this.peerOwnerId,
    this.peerRegion,
    this.peerVpcId,
    this.region,
    this.requester,
    this.tags,
    this.tagsAll,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptStatus': ?acceptStatus,
      'accepter': ?pulumi.Input.mapOptionalInputValue<VpcPeeringConnectionAccepter, Map<String, dynamic>>(accepter, (value) => value.toMap()),
      'autoAccept': ?autoAccept,
      'peerOwnerId': ?peerOwnerId,
      'peerRegion': ?peerRegion,
      'peerVpcId': ?peerVpcId,
      'region': ?region,
      'requester': ?pulumi.Input.mapOptionalInputValue<VpcPeeringConnectionRequester, Map<String, dynamic>>(requester, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory VpcPeeringConnectionState.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectionState(
      acceptStatus: map['acceptStatus'] == null ? null : ((map['acceptStatus'] as String).input()).input(),
      accepter: map['accepter'] == null ? null : ((VpcPeeringConnectionAccepter.fromMap((map['accepter']! as Map).cast<String, dynamic>())).input()).input(),
      autoAccept: map['autoAccept'] == null ? null : ((map['autoAccept'] as bool).input()).input(),
      peerOwnerId: map['peerOwnerId'] == null ? null : ((map['peerOwnerId'] as String).input()).input(),
      peerRegion: map['peerRegion'] == null ? null : ((map['peerRegion'] as String).input()).input(),
      peerVpcId: map['peerVpcId'] == null ? null : ((map['peerVpcId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      requester: map['requester'] == null ? null : ((VpcPeeringConnectionRequester.fromMap((map['requester']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      vpcId: map['vpcId'] == null ? null : ((map['vpcId'] as String).input()).input(),
    );
  }
}


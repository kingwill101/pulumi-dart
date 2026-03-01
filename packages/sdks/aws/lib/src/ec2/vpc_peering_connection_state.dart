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
    pulumi.Output<String>? acceptStatus,
    pulumi.Output<VpcPeeringConnectionAccepter>? accepter,
    pulumi.Output<bool>? autoAccept,
    pulumi.Output<String>? peerOwnerId,
    pulumi.Output<String>? peerRegion,
    pulumi.Output<String>? peerVpcId,
    pulumi.Output<String>? region,
    pulumi.Output<VpcPeeringConnectionRequester>? requester,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      acceptStatus = pulumi.Input.asOptionalInput<String>(acceptStatus),
      accepter = pulumi.Input.asOptionalInput<VpcPeeringConnectionAccepter>(accepter),
      autoAccept = pulumi.Input.asOptionalInput<bool>(autoAccept),
      peerOwnerId = pulumi.Input.asOptionalInput<String>(peerOwnerId),
      peerRegion = pulumi.Input.asOptionalInput<String>(peerRegion),
      peerVpcId = pulumi.Input.asOptionalInput<String>(peerVpcId),
      region = pulumi.Input.asOptionalInput<String>(region),
      requester = pulumi.Input.asOptionalInput<VpcPeeringConnectionRequester>(requester),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      acceptStatus: map['acceptStatus'] == null ? null : pulumi.Output.create<String>(map['acceptStatus'] as String),
      accepter: map['accepter'] == null ? null : pulumi.Output.create<VpcPeeringConnectionAccepter>(VpcPeeringConnectionAccepter.fromMap((map['accepter'] as Map).cast<String, dynamic>())),
      autoAccept: map['autoAccept'] == null ? null : pulumi.Output.create<bool>(map['autoAccept'] as bool),
      peerOwnerId: map['peerOwnerId'] == null ? null : pulumi.Output.create<String>(map['peerOwnerId'] as String),
      peerRegion: map['peerRegion'] == null ? null : pulumi.Output.create<String>(map['peerRegion'] as String),
      peerVpcId: map['peerVpcId'] == null ? null : pulumi.Output.create<String>(map['peerVpcId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requester: map['requester'] == null ? null : pulumi.Output.create<VpcPeeringConnectionRequester>(VpcPeeringConnectionRequester.fromMap((map['requester'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}


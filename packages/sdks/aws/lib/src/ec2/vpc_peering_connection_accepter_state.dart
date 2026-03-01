// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_connection_accepter_accepter.dart';
import 'vpc_peering_connection_accepter_requester.dart';

/// Input properties used for looking up and filtering VpcPeeringConnectionAccepter resources.
class VpcPeeringConnectionAccepterState {
  /// The status of the VPC Peering Connection request.
  final pulumi.Input<String>? acceptStatus;
  /// A configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the accepter VPC.
  final pulumi.Input<VpcPeeringConnectionAccepterAccepter>? accepter;
  /// Whether or not to accept the peering request. Defaults to `false`.
  final pulumi.Input<bool>? autoAccept;
  /// The AWS account ID of the owner of the requester VPC.
  final pulumi.Input<String>? peerOwnerId;
  /// The region of the accepter VPC.
  final pulumi.Input<String>? peerRegion;
  /// The ID of the requester VPC.
  final pulumi.Input<String>? peerVpcId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the requester VPC.
  final pulumi.Input<VpcPeeringConnectionAccepterRequester>? requester;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ID of the accepter VPC.
  final pulumi.Input<String>? vpcId;
  /// The VPC Peering Connection ID to manage.
  final pulumi.Input<String>? vpcPeeringConnectionId;

  /// Creates a new [VpcPeeringConnectionAccepterState].
  /// [acceptStatus] The status of the VPC Peering Connection request.
  /// [accepter] A configuration block that describes [VPC Peering Connection]
  /// [autoAccept] Whether or not to accept the peering request. Defaults to `false`.
  /// [peerOwnerId] The AWS account ID of the owner of the requester VPC.
  /// [peerRegion] The region of the accepter VPC.
  /// [peerVpcId] The ID of the requester VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requester] A configuration block that describes [VPC Peering Connection]
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] The ID of the accepter VPC.
  /// [vpcPeeringConnectionId] The VPC Peering Connection ID to manage.
  VpcPeeringConnectionAccepterState({
    pulumi.Output<String>? acceptStatus,
    pulumi.Output<VpcPeeringConnectionAccepterAccepter>? accepter,
    pulumi.Output<bool>? autoAccept,
    pulumi.Output<String>? peerOwnerId,
    pulumi.Output<String>? peerRegion,
    pulumi.Output<String>? peerVpcId,
    pulumi.Output<String>? region,
    pulumi.Output<VpcPeeringConnectionAccepterRequester>? requester,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vpcPeeringConnectionId,
  }) :
      acceptStatus = pulumi.Input.asOptionalInput<String>(acceptStatus),
      accepter = pulumi.Input.asOptionalInput<VpcPeeringConnectionAccepterAccepter>(accepter),
      autoAccept = pulumi.Input.asOptionalInput<bool>(autoAccept),
      peerOwnerId = pulumi.Input.asOptionalInput<String>(peerOwnerId),
      peerRegion = pulumi.Input.asOptionalInput<String>(peerRegion),
      peerVpcId = pulumi.Input.asOptionalInput<String>(peerVpcId),
      region = pulumi.Input.asOptionalInput<String>(region),
      requester = pulumi.Input.asOptionalInput<VpcPeeringConnectionAccepterRequester>(requester),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vpcPeeringConnectionId = pulumi.Input.asOptionalInput<String>(vpcPeeringConnectionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptStatus': ?acceptStatus,
      'accepter': ?pulumi.Input.mapOptionalInputValue<VpcPeeringConnectionAccepterAccepter, Map<String, dynamic>>(accepter, (value) => value.toMap()),
      'autoAccept': ?autoAccept,
      'peerOwnerId': ?peerOwnerId,
      'peerRegion': ?peerRegion,
      'peerVpcId': ?peerVpcId,
      'region': ?region,
      'requester': ?pulumi.Input.mapOptionalInputValue<VpcPeeringConnectionAccepterRequester, Map<String, dynamic>>(requester, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
      'vpcPeeringConnectionId': ?vpcPeeringConnectionId,
    };
  }

  factory VpcPeeringConnectionAccepterState.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectionAccepterState(
      acceptStatus: map['acceptStatus'] == null ? null : pulumi.Output.create<String>(map['acceptStatus'] as String),
      accepter: map['accepter'] == null ? null : pulumi.Output.create<VpcPeeringConnectionAccepterAccepter>(VpcPeeringConnectionAccepterAccepter.fromMap((map['accepter'] as Map).cast<String, dynamic>())),
      autoAccept: map['autoAccept'] == null ? null : pulumi.Output.create<bool>(map['autoAccept'] as bool),
      peerOwnerId: map['peerOwnerId'] == null ? null : pulumi.Output.create<String>(map['peerOwnerId'] as String),
      peerRegion: map['peerRegion'] == null ? null : pulumi.Output.create<String>(map['peerRegion'] as String),
      peerVpcId: map['peerVpcId'] == null ? null : pulumi.Output.create<String>(map['peerVpcId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requester: map['requester'] == null ? null : pulumi.Output.create<VpcPeeringConnectionAccepterRequester>(VpcPeeringConnectionAccepterRequester.fromMap((map['requester'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] == null ? null : pulumi.Output.create<String>(map['vpcPeeringConnectionId'] as String),
    );
  }
}


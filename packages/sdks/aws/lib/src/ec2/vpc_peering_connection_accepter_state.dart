// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_connection_accepter_accepter.dart';
import 'vpc_peering_connection_accepter_requester.dart';

/// Input properties used for looking up and filtering VpcPeeringConnectionAccepter resources.
class VpcPeeringConnectionAccepterState {
  /// The status of the VPC Peering Connection request.
  final pulumi.Input<String?>? acceptStatus;
  /// A configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the accepter VPC.
  final pulumi.Input<VpcPeeringConnectionAccepterAccepter?>? accepter;
  /// Whether or not to accept the peering request. Defaults to `false`.
  final pulumi.Input<bool?>? autoAccept;
  /// The AWS account ID of the owner of the requester VPC.
  final pulumi.Input<String?>? peerOwnerId;
  /// The region of the accepter VPC.
  final pulumi.Input<String?>? peerRegion;
  /// The ID of the requester VPC.
  final pulumi.Input<String?>? peerVpcId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the requester VPC.
  final pulumi.Input<VpcPeeringConnectionAccepterRequester?>? requester;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The ID of the accepter VPC.
  final pulumi.Input<String?>? vpcId;
  /// The VPC Peering Connection ID to manage.
  final pulumi.Input<String?>? vpcPeeringConnectionId;

  /// Creates a new [VpcPeeringConnectionAccepterState].
  /// [acceptStatus] The status of the VPC Peering Connection request.
  /// [accepter] A configuration block that describes [VPC Peering Connection]
  /// [autoAccept] Whether or not to accept the peering request. Defaults to `false`.
  /// [peerOwnerId] The AWS account ID of the owner of the requester VPC.
  /// [peerRegion] The region of the accepter VPC.
  /// [peerVpcId] The ID of the requester VPC.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requester] A configuration block that describes [VPC Peering Connection]
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [vpcId] The ID of the accepter VPC.
  /// [vpcPeeringConnectionId] The VPC Peering Connection ID to manage.
  const VpcPeeringConnectionAccepterState({
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
    this.vpcPeeringConnectionId,
  });

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
      acceptStatus: (() { final guardedValue = map['acceptStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accepter: (() { final guardedValue = map['accepter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcPeeringConnectionAccepterAccepter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoAccept: (() { final guardedValue = map['autoAccept']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      peerOwnerId: (() { final guardedValue = map['peerOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerRegion: (() { final guardedValue = map['peerRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerVpcId: (() { final guardedValue = map['peerVpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requester: (() { final guardedValue = map['requester']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VpcPeeringConnectionAccepterRequester.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcPeeringConnectionId: (() { final guardedValue = map['vpcPeeringConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

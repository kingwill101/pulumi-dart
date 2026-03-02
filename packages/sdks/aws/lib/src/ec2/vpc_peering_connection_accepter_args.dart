// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_connection_accepter_accepter.dart';
import 'vpc_peering_connection_accepter_requester.dart';

/// {@template pulumi_ec2_vpc_peering_connection_accepter_vpc_peering_connection_accepter_args_doc}
/// The set of arguments for VpcPeeringConnectionAccepter.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_peering_connection_accepter_vpc_peering_connection_accepter_args_doc}
class VpcPeeringConnectionAccepterArgs {
  /// A configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the accepter VPC.
  final pulumi.Input<VpcPeeringConnectionAccepterAccepter>? accepter;
  /// Whether or not to accept the peering request. Defaults to `false`.
  final pulumi.Input<bool>? autoAccept;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the requester VPC.
  final pulumi.Input<VpcPeeringConnectionAccepterRequester>? requester;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC Peering Connection ID to manage.
  final pulumi.Input<String> vpcPeeringConnectionId;

  /// Creates a new [VpcPeeringConnectionAccepterArgs].
  /// [accepter] A configuration block that describes [VPC Peering Connection]
  /// [autoAccept] Whether or not to accept the peering request. Defaults to `false`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requester] A configuration block that describes [VPC Peering Connection]
  /// [tags] A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcPeeringConnectionId] The VPC Peering Connection ID to manage.
  VpcPeeringConnectionAccepterArgs({
    this.accepter,
    this.autoAccept,
    this.region,
    this.requester,
    this.tags,
    required this.vpcPeeringConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accepter': ?pulumi.Input.mapOptionalInputValue<VpcPeeringConnectionAccepterAccepter, Map<String, dynamic>>(accepter, (value) => value.toMap()),
      'autoAccept': ?autoAccept,
      'region': ?region,
      'requester': ?pulumi.Input.mapOptionalInputValue<VpcPeeringConnectionAccepterRequester, Map<String, dynamic>>(requester, (value) => value.toMap()),
      'tags': ?tags,
      'vpcPeeringConnectionId': vpcPeeringConnectionId,
    };
  }

  factory VpcPeeringConnectionAccepterArgs.fromMap(Map<String, dynamic> map) {
    return VpcPeeringConnectionAccepterArgs(
      accepter: map['accepter'] == null ? null : (VpcPeeringConnectionAccepterAccepter.fromMap((map['accepter'] as Map).cast<String, dynamic>())).input(),
      autoAccept: map['autoAccept'] == null ? null : (map['autoAccept'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      requester: map['requester'] == null ? null : (VpcPeeringConnectionAccepterRequester.fromMap((map['requester'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcPeeringConnectionId: (map['vpcPeeringConnectionId'] as String).input(),
    );
  }
}


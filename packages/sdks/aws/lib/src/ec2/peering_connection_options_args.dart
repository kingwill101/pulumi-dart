// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'peering_connection_options_accepter.dart';
import 'peering_connection_options_requester.dart';

/// {@template pulumi_ec2_peering_connection_options_peering_connection_options_args_doc}
/// The set of arguments for PeeringConnectionOptions.
/// {@endtemplate}
/// {@macro pulumi_ec2_peering_connection_options_peering_connection_options_args_doc}
class PeeringConnectionOptionsArgs {
  /// An optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that accepts the peering connection (a maximum of one).
  final pulumi.Input<PeeringConnectionOptionsAccepter>? accepter;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that requests the peering connection (a maximum of one).
  final pulumi.Input<PeeringConnectionOptionsRequester>? requester;
  /// The ID of the requester VPC peering connection.
  final pulumi.Input<String> vpcPeeringConnectionId;

  /// Creates a new [PeeringConnectionOptionsArgs].
  /// [accepter] An optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that accepts the peering connection (a maximum of one).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requester] A optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that requests the peering connection (a maximum of one).
  /// [vpcPeeringConnectionId] The ID of the requester VPC peering connection.
  PeeringConnectionOptionsArgs({
    this.accepter,
    this.region,
    this.requester,
    required this.vpcPeeringConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accepter': ?pulumi.Input.mapOptionalInputValue<PeeringConnectionOptionsAccepter, Map<String, dynamic>>(accepter, (value) => value.toMap()),
      'region': ?region,
      'requester': ?pulumi.Input.mapOptionalInputValue<PeeringConnectionOptionsRequester, Map<String, dynamic>>(requester, (value) => value.toMap()),
      'vpcPeeringConnectionId': vpcPeeringConnectionId,
    };
  }

  factory PeeringConnectionOptionsArgs.fromMap(Map<String, dynamic> map) {
    return PeeringConnectionOptionsArgs(
      accepter: map['accepter'] == null ? null : (PeeringConnectionOptionsAccepter.fromMap((map['accepter'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      requester: map['requester'] == null ? null : (PeeringConnectionOptionsRequester.fromMap((map['requester'] as Map).cast<String, dynamic>())).input(),
      vpcPeeringConnectionId: (map['vpcPeeringConnectionId'] as String).input(),
    );
  }
}


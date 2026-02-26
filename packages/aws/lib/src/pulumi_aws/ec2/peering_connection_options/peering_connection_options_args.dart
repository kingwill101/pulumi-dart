// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../peering_connection_options_accepter/peering_connection_options_accepter.dart';
import '../peering_connection_options_requester/peering_connection_options_requester.dart';

/// The set of arguments for PeeringConnectionOptions.
class PeeringConnectionOptionsArgs {
  /// An optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that accepts the peering connection (a maximum of one).
  final Input<PeeringConnectionOptionsAccepter>? accepter;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that requests the peering connection (a maximum of one).
  final Input<PeeringConnectionOptionsRequester>? requester;

  /// The ID of the requester VPC peering connection.
  final Input<String> vpcPeeringConnectionId;

  PeeringConnectionOptionsArgs({
    this.accepter,
    this.region,
    this.requester,
    required this.vpcPeeringConnectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accepterValue = accepter;
    if (accepterValue != null) {
      map['accepter'] = Input.mapOptionalInputValue<
          PeeringConnectionOptionsAccepter,
          Map<String, dynamic>>(accepterValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requesterValue = requester;
    if (requesterValue != null) {
      map['requester'] = Input.mapOptionalInputValue<
          PeeringConnectionOptionsRequester,
          Map<String, dynamic>>(requesterValue, (value) => value.toMap());
    }
    map['vpcPeeringConnectionId'] = vpcPeeringConnectionId;
    return map;
  }

  factory PeeringConnectionOptionsArgs.fromMap(Map<String, dynamic> map) {
    return PeeringConnectionOptionsArgs(
      accepter: Input.asOptionalInput<PeeringConnectionOptionsAccepter>(
          map['accepter']),
      region: Input.asOptionalInput<String>(map['region']),
      requester: Input.asOptionalInput<PeeringConnectionOptionsRequester>(
          map['requester']),
      vpcPeeringConnectionId:
          Input.asInput<String>(map['vpcPeeringConnectionId']),
    );
  }
}

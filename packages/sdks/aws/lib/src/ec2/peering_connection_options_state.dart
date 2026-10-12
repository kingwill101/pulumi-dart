// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'peering_connection_options_accepter.dart';
import 'peering_connection_options_requester.dart';

/// Input properties used for looking up and filtering PeeringConnectionOptions resources.
class PeeringConnectionOptionsState {
  /// Configuration block for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to set for the VPC that accepts the peering connection (a maximum of one). See `accepter` Block below.
  final pulumi.Input<PeeringConnectionOptionsAccepter?>? accepter;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration block for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to set for the VPC that requests the peering connection (a maximum of one). See `requester` Block below.
  final pulumi.Input<PeeringConnectionOptionsRequester?>? requester;
  /// ID of the requester VPC peering connection.
  final pulumi.Input<String?>? vpcPeeringConnectionId;

  /// Creates a new [PeeringConnectionOptionsState].
  /// [accepter] Configuration block for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to set for the VPC that accepts the peering connection (a maximum of one). See `accepter` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requester] Configuration block for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to set for the VPC that requests the peering connection (a maximum of one). See `requester` Block below.
  /// [vpcPeeringConnectionId] ID of the requester VPC peering connection.
  const PeeringConnectionOptionsState({
    this.accepter,
    this.region,
    this.requester,
    this.vpcPeeringConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accepter': ?pulumi.Input.mapOptionalInputValue<PeeringConnectionOptionsAccepter, Map<String, dynamic>>(accepter, (value) => value.toMap()),
      'region': ?region,
      'requester': ?pulumi.Input.mapOptionalInputValue<PeeringConnectionOptionsRequester, Map<String, dynamic>>(requester, (value) => value.toMap()),
      'vpcPeeringConnectionId': ?vpcPeeringConnectionId,
    };
  }

  factory PeeringConnectionOptionsState.fromMap(Map<String, dynamic> map) {
    return PeeringConnectionOptionsState(
      accepter: (() { final guardedValue = map['accepter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PeeringConnectionOptionsAccepter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requester: (() { final guardedValue = map['requester']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PeeringConnectionOptionsRequester.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcPeeringConnectionId: (() { final guardedValue = map['vpcPeeringConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

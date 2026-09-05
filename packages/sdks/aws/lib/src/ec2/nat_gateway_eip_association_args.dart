// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_eip_association_timeouts.dart';

/// {@template pulumi_ec2_nat_gateway_eip_association_nat_gateway_eip_association_args_doc}
/// The set of arguments for NatGatewayEipAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2_nat_gateway_eip_association_nat_gateway_eip_association_args_doc}
class NatGatewayEipAssociationArgs {
  /// The ID of the Elastic IP Allocation to associate with the NAT Gateway.
  final pulumi.Input<String> allocationId;
  /// The ID of the NAT Gateway to associate the Elastic IP Allocation to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> natGatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<NatGatewayEipAssociationTimeouts?>? timeouts;

  /// Creates a new [NatGatewayEipAssociationArgs].
  /// [allocationId] The ID of the Elastic IP Allocation to associate with the NAT Gateway.
  /// [natGatewayId] The ID of the NAT Gateway to associate the Elastic IP Allocation to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const NatGatewayEipAssociationArgs({
    required this.allocationId,
    required this.natGatewayId,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': allocationId,
      'natGatewayId': natGatewayId,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<NatGatewayEipAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory NatGatewayEipAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NatGatewayEipAssociationArgs(
      allocationId: pulumi.Input.fromValue(map['allocationId'] as String),
      natGatewayId: pulumi.Input.fromValue(map['natGatewayId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NatGatewayEipAssociationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

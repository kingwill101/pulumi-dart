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
  final pulumi.Input<String>? region;
  final pulumi.Input<NatGatewayEipAssociationTimeouts>? timeouts;

  /// Creates a new [NatGatewayEipAssociationArgs].
  /// [allocationId] The ID of the Elastic IP Allocation to associate with the NAT Gateway.
  /// [natGatewayId] The ID of the NAT Gateway to associate the Elastic IP Allocation to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  NatGatewayEipAssociationArgs({
    required String allocationId,
    required String natGatewayId,
    String? region,
    NatGatewayEipAssociationTimeouts? timeouts,
  }) :
      allocationId = pulumi.Input.asInput<String>(allocationId),
      natGatewayId = pulumi.Input.asInput<String>(natGatewayId),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<NatGatewayEipAssociationTimeouts>(timeouts);

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
      allocationId: map['allocationId'] as String,
      natGatewayId: map['natGatewayId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      timeouts: map['timeouts'] == null ? null : NatGatewayEipAssociationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_eip_association_timeouts.dart';

/// Input properties used for looking up and filtering NatGatewayEipAssociation resources.
class NatGatewayEipAssociationState {
  /// The ID of the Elastic IP Allocation to associate with the NAT Gateway.
  final pulumi.Input<String>? allocationId;
  final pulumi.Input<String>? associationId;
  /// The ID of the NAT Gateway to associate the Elastic IP Allocation to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? natGatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<NatGatewayEipAssociationTimeouts>? timeouts;

  /// Creates a new [NatGatewayEipAssociationState].
  /// [allocationId] The ID of the Elastic IP Allocation to associate with the NAT Gateway.
  /// [associationId] Optional.
  /// [natGatewayId] The ID of the NAT Gateway to associate the Elastic IP Allocation to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  NatGatewayEipAssociationState({
    pulumi.Output<String>? allocationId,
    pulumi.Output<String>? associationId,
    pulumi.Output<String>? natGatewayId,
    pulumi.Output<String>? region,
    pulumi.Output<NatGatewayEipAssociationTimeouts>? timeouts,
  }) :
      allocationId = pulumi.Input.asOptionalInput<String>(allocationId),
      associationId = pulumi.Input.asOptionalInput<String>(associationId),
      natGatewayId = pulumi.Input.asOptionalInput<String>(natGatewayId),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<NatGatewayEipAssociationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationId': ?allocationId,
      'associationId': ?associationId,
      'natGatewayId': ?natGatewayId,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<NatGatewayEipAssociationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory NatGatewayEipAssociationState.fromMap(Map<String, dynamic> map) {
    return NatGatewayEipAssociationState(
      allocationId: map['allocationId'] == null ? null : pulumi.Output.create<String>(map['allocationId'] as String),
      associationId: map['associationId'] == null ? null : pulumi.Output.create<String>(map['associationId'] as String),
      natGatewayId: map['natGatewayId'] == null ? null : pulumi.Output.create<String>(map['natGatewayId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<NatGatewayEipAssociationTimeouts>(NatGatewayEipAssociationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}


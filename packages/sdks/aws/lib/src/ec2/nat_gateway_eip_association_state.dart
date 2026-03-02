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
    this.allocationId,
    this.associationId,
    this.natGatewayId,
    this.region,
    this.timeouts,
  });

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
      allocationId: map['allocationId'] == null ? null : (map['allocationId'] as String).input(),
      associationId: map['associationId'] == null ? null : (map['associationId'] as String).input(),
      natGatewayId: map['natGatewayId'] == null ? null : (map['natGatewayId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      timeouts: map['timeouts'] == null ? null : (NatGatewayEipAssociationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../nat_gateway_eip_association_timeouts/nat_gateway_eip_association_timeouts.dart';

/// The set of arguments for NatGatewayEipAssociation.
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

  NatGatewayEipAssociationArgs({
    required this.allocationId,
    required this.natGatewayId,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allocationId'] = allocationId;
    map['natGatewayId'] = natGatewayId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          NatGatewayEipAssociationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory NatGatewayEipAssociationArgs.fromMap(Map<String, dynamic> map) {
    return NatGatewayEipAssociationArgs(
      allocationId: pulumi.Input.asInput<String>(map['allocationId']),
      natGatewayId: pulumi.Input.asInput<String>(map['natGatewayId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts: pulumi.Input.asOptionalInput<NatGatewayEipAssociationTimeouts>(
          map['timeouts']),
    );
  }
}

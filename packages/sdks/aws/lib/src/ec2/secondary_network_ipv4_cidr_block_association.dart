// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecondaryNetworkIpv4CidrBlockAssociation {
  /// Association ID for the IPv4 CIDR block.
  final pulumi.Input<String> associationId;

  /// IPv4 CIDR block.
  final pulumi.Input<String> cidrBlock;

  /// State of the IPv4 CIDR block association.
  final pulumi.Input<String> state;

  /// Creates a new [SecondaryNetworkIpv4CidrBlockAssociation].
  /// [associationId] Association ID for the IPv4 CIDR block.
  /// [cidrBlock] IPv4 CIDR block.
  /// [state] State of the IPv4 CIDR block association.
  SecondaryNetworkIpv4CidrBlockAssociation({
    required this.associationId,
    required this.cidrBlock,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associationId': associationId,
      'cidrBlock': cidrBlock,
      'state': state,
    };
  }

  factory SecondaryNetworkIpv4CidrBlockAssociation.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecondaryNetworkIpv4CidrBlockAssociation(
      associationId: pulumi.Input.fromValue(map['associationId'] as String),
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

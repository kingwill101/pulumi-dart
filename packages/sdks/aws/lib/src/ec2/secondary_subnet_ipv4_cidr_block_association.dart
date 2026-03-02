// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecondarySubnetIpv4CidrBlockAssociation {
  /// Association ID for the IPv4 CIDR block.
  final pulumi.Input<String> associationId;
  /// IPv4 CIDR block.
  final pulumi.Input<String> cidrBlock;
  /// State of the IPv4 CIDR block association.
  final pulumi.Input<String> state;

  /// Creates a new [SecondarySubnetIpv4CidrBlockAssociation].
  /// [associationId] Association ID for the IPv4 CIDR block.
  /// [cidrBlock] IPv4 CIDR block.
  /// [state] State of the IPv4 CIDR block association.
  SecondarySubnetIpv4CidrBlockAssociation({
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

  factory SecondarySubnetIpv4CidrBlockAssociation.fromMap(Map<String, dynamic> map) {
    return SecondarySubnetIpv4CidrBlockAssociation(
      associationId: (map['associationId'] as String).input(),
      cidrBlock: (map['cidrBlock'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class SecondarySubnetIpv4CidrBlockAssociation {
  /// Association ID for the IPv4 CIDR block.
  final String associationId;
  /// IPv4 CIDR block.
  final String cidrBlock;
  /// State of the IPv4 CIDR block association.
  final String state;

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
      associationId: map['associationId'] as String,
      cidrBlock: map['cidrBlock'] as String,
      state: map['state'] as String,
    );
  }
}


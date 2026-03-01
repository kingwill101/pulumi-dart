// ignore_for_file: unused_element, unnecessary_cast


class SecondaryNetworkIpv4CidrBlockAssociation {
  /// Association ID for the IPv4 CIDR block.
  final String associationId;
  /// IPv4 CIDR block.
  final String cidrBlock;
  /// State of the IPv4 CIDR block association.
  final String state;

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

  factory SecondaryNetworkIpv4CidrBlockAssociation.fromMap(Map<String, dynamic> map) {
    return SecondaryNetworkIpv4CidrBlockAssociation(
      associationId: map['associationId'] as String,
      cidrBlock: map['cidrBlock'] as String,
      state: map['state'] as String,
    );
  }
}


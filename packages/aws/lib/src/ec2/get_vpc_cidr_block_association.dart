// ignore_for_file: unused_element, unnecessary_cast


class GetVpcCidrBlockAssociation {
  /// Association ID for the IPv4 CIDR block.
  final String associationId;
  /// Cidr block of the desired VPC.
  final String cidrBlock;
  /// Current state of the desired VPC.
  /// Can be either `"pending"` or `"available"`.
  final String state;

  /// Creates a new [GetVpcCidrBlockAssociation].
  /// [associationId] Association ID for the IPv4 CIDR block.
  /// [cidrBlock] Cidr block of the desired VPC.
  /// [state] Current state of the desired VPC.
  GetVpcCidrBlockAssociation({
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

  factory GetVpcCidrBlockAssociation.fromMap(Map<String, dynamic> map) {
    return GetVpcCidrBlockAssociation(
      associationId: map['associationId'] as String,
      cidrBlock: map['cidrBlock'] as String,
      state: map['state'] as String,
    );
  }
}


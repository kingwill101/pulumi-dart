// ignore_for_file: unused_element, unnecessary_cast

class GetVpcCidrBlockAssociation {
  /// Association ID for the IPv4 CIDR block.
  final String associationId;

  /// Cidr block of the desired VPC.
  final String cidrBlock;

  /// Current state of the desired VPC.
  /// Can be either `"pending"` or `"available"`.
  final String state;

  GetVpcCidrBlockAssociation({
    required this.associationId,
    required this.cidrBlock,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['associationId'] = associationId;
    map['cidrBlock'] = cidrBlock;
    map['state'] = state;
    return map;
  }

  factory GetVpcCidrBlockAssociation.fromMap(Map<String, dynamic> map) {
    return GetVpcCidrBlockAssociation(
      associationId: map['associationId'] as String,
      cidrBlock: map['cidrBlock'] as String,
      state: map['state'] as String,
    );
  }
}

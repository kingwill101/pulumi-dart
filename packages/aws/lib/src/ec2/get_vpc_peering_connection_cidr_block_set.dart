// ignore_for_file: unused_element, unnecessary_cast

class GetVpcPeeringConnectionCidrBlockSet {
  /// Primary CIDR block of the requester VPC of the specific VPC Peering Connection to retrieve.
  final String cidrBlock;

  /// Creates a new [GetVpcPeeringConnectionCidrBlockSet].
  /// [cidrBlock] Primary CIDR block of the requester VPC of the specific VPC Peering Connection to retrieve.
  GetVpcPeeringConnectionCidrBlockSet({
    required this.cidrBlock,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlock'] = cidrBlock;
    return map;
  }

  factory GetVpcPeeringConnectionCidrBlockSet.fromMap(
      Map<String, dynamic> map) {
    return GetVpcPeeringConnectionCidrBlockSet(
      cidrBlock: map['cidrBlock'] as String,
    );
  }
}

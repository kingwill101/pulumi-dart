// ignore_for_file: unused_element, unnecessary_cast

class GetVpcPeeringConnectionPeerCidrBlockSet {
  /// Primary CIDR block of the requester VPC of the specific VPC Peering Connection to retrieve.
  final String cidrBlock;

  /// Creates a new [GetVpcPeeringConnectionPeerCidrBlockSet].
  /// [cidrBlock] Primary CIDR block of the requester VPC of the specific VPC Peering Connection to retrieve.
  GetVpcPeeringConnectionPeerCidrBlockSet({
    required this.cidrBlock,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlock'] = cidrBlock;
    return map;
  }

  factory GetVpcPeeringConnectionPeerCidrBlockSet.fromMap(
      Map<String, dynamic> map) {
    return GetVpcPeeringConnectionPeerCidrBlockSet(
      cidrBlock: map['cidrBlock'] as String,
    );
  }
}

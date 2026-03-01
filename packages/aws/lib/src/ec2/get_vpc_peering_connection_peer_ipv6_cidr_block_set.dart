// ignore_for_file: unused_element, unnecessary_cast

class GetVpcPeeringConnectionPeerIpv6CidrBlockSet {
  final String ipv6CidrBlock;

  /// Creates a new [GetVpcPeeringConnectionPeerIpv6CidrBlockSet].
  /// [ipv6CidrBlock] Required.
  GetVpcPeeringConnectionPeerIpv6CidrBlockSet({required this.ipv6CidrBlock});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ipv6CidrBlock': ipv6CidrBlock};
  }

  factory GetVpcPeeringConnectionPeerIpv6CidrBlockSet.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVpcPeeringConnectionPeerIpv6CidrBlockSet(
      ipv6CidrBlock: map['ipv6CidrBlock'] as String,
    );
  }
}

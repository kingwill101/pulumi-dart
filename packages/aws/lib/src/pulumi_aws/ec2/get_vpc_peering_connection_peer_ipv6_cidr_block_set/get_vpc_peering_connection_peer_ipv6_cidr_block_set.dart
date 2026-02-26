// ignore_for_file: unused_element, unnecessary_cast

class GetVpcPeeringConnectionPeerIpv6CidrBlockSet {
  final String ipv6CidrBlock;

  GetVpcPeeringConnectionPeerIpv6CidrBlockSet({
    required this.ipv6CidrBlock,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipv6CidrBlock'] = ipv6CidrBlock;
    return map;
  }

  factory GetVpcPeeringConnectionPeerIpv6CidrBlockSet.fromMap(
      Map<String, dynamic> map) {
    return GetVpcPeeringConnectionPeerIpv6CidrBlockSet(
      ipv6CidrBlock: map['ipv6CidrBlock'] as String,
    );
  }
}

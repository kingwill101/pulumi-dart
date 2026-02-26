// ignore_for_file: unused_element, unnecessary_cast

class GetVpcIpamPoolCidrsIpamPoolCidr {
  /// A network CIDR.
  final String cidr;

  /// The provisioning state of that CIDR.
  final String state;

  GetVpcIpamPoolCidrsIpamPoolCidr({
    required this.cidr,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidr'] = cidr;
    map['state'] = state;
    return map;
  }

  factory GetVpcIpamPoolCidrsIpamPoolCidr.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolCidrsIpamPoolCidr(
      cidr: map['cidr'] as String,
      state: map['state'] as String,
    );
  }
}

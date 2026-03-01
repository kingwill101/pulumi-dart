// ignore_for_file: unused_element, unnecessary_cast

class GetVpcIpamPoolCidrsIpamPoolCidr {
  /// A network CIDR.
  final String cidr;

  /// The provisioning state of that CIDR.
  final String state;

  /// Creates a new [GetVpcIpamPoolCidrsIpamPoolCidr].
  /// [cidr] A network CIDR.
  /// [state] The provisioning state of that CIDR.
  GetVpcIpamPoolCidrsIpamPoolCidr({required this.cidr, required this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cidr': cidr, 'state': state};
  }

  factory GetVpcIpamPoolCidrsIpamPoolCidr.fromMap(Map<String, dynamic> map) {
    return GetVpcIpamPoolCidrsIpamPoolCidr(
      cidr: map['cidr'] as String,
      state: map['state'] as String,
    );
  }
}

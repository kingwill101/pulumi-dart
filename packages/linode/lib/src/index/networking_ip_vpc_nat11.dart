// ignore_for_file: unused_element, unnecessary_cast


class NetworkingIpVpcNat11 {
  /// The IPv4 address that is configured as a 1:1 NAT for this VPC interface.
  final String address;
  /// The `id` of the VPC Subnet for this Interface.
  final int subnetId;
  /// The `id` of the VPC configured for this Interface.
  final int vpcId;

  /// Creates a new [NetworkingIpVpcNat11].
  /// [address] The IPv4 address that is configured as a 1:1 NAT for this VPC interface.
  /// [subnetId] The `id` of the VPC Subnet for this Interface.
  /// [vpcId] The `id` of the VPC configured for this Interface.
  NetworkingIpVpcNat11({
    required this.address,
    required this.subnetId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'subnetId': subnetId,
      'vpcId': vpcId,
    };
  }

  factory NetworkingIpVpcNat11.fromMap(Map<String, dynamic> map) {
    return NetworkingIpVpcNat11(
      address: map['address'] as String,
      subnetId: map['subnetId'] as int,
      vpcId: map['vpcId'] as int,
    );
  }
}


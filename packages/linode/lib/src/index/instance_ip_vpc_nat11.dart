// ignore_for_file: unused_element, unnecessary_cast


class InstanceIpVpcNat11 {
  /// The resulting IPv4 address.
  final String address;
  final int subnetId;
  final int vpcId;

  /// Creates a new [InstanceIpVpcNat11].
  /// [address] The resulting IPv4 address.
  /// [subnetId] Required.
  /// [vpcId] Required.
  InstanceIpVpcNat11({
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

  factory InstanceIpVpcNat11.fromMap(Map<String, dynamic> map) {
    return InstanceIpVpcNat11(
      address: map['address'] as String,
      subnetId: map['subnetId'] as int,
      vpcId: map['vpcId'] as int,
    );
  }
}


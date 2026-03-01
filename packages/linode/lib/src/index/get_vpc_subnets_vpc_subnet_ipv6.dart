// ignore_for_file: unused_element, unnecessary_cast


class GetVpcSubnetsVpcSubnetIpv6 {
  /// An IPv6 range allocated to this subnet.
  final String range;

  /// Creates a new [GetVpcSubnetsVpcSubnetIpv6].
  /// [range] An IPv6 range allocated to this subnet.
  GetVpcSubnetsVpcSubnetIpv6({
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range,
    };
  }

  factory GetVpcSubnetsVpcSubnetIpv6.fromMap(Map<String, dynamic> map) {
    return GetVpcSubnetsVpcSubnetIpv6(
      range: map['range'] as String,
    );
  }
}


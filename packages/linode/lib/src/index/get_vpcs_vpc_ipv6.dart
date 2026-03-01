// ignore_for_file: unused_element, unnecessary_cast


class GetVpcsVpcIpv6 {
  /// The IPv6 range assigned to this VPC.
  final String range;

  /// Creates a new [GetVpcsVpcIpv6].
  /// [range] The IPv6 range assigned to this VPC.
  GetVpcsVpcIpv6({
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'range': range,
    };
  }

  factory GetVpcsVpcIpv6.fromMap(Map<String, dynamic> map) {
    return GetVpcsVpcIpv6(
      range: map['range'] as String,
    );
  }
}


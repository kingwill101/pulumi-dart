// ignore_for_file: unused_element, unnecessary_cast

class IpSetIpSetDescriptor {
  /// Type of the IP address - `IPV4` or `IPV6`.
  final String type;

  /// An IPv4 or IPv6 address specified via CIDR notationE.g., `192.0.2.44/32` or `1111:0000:0000:0000:0000:0000:0000:0000/64`
  final String value;

  IpSetIpSetDescriptor({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory IpSetIpSetDescriptor.fromMap(Map<String, dynamic> map) {
    return IpSetIpSetDescriptor(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

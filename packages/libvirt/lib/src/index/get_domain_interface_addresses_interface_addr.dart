// ignore_for_file: unused_element, unnecessary_cast


class GetDomainInterfaceAddressesInterfaceAddr {
  /// IP address.
  final String addr;
  /// Network prefix length (e.g., 24 for 255.255.255.0).
  final double prefix;
  /// Address type: `ipv4` or `ipv6`.
  final String type;

  /// Creates a new [GetDomainInterfaceAddressesInterfaceAddr].
  /// [addr] IP address.
  /// [prefix] Network prefix length (e.g., 24 for 255.255.255.0).
  /// [type] Address type: `ipv4` or `ipv6`.
  GetDomainInterfaceAddressesInterfaceAddr({
    required this.addr,
    required this.prefix,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addr': addr,
      'prefix': prefix,
      'type': type,
    };
  }

  factory GetDomainInterfaceAddressesInterfaceAddr.fromMap(Map<String, dynamic> map) {
    return GetDomainInterfaceAddressesInterfaceAddr(
      addr: map['addr'] as String,
      prefix: map['prefix'] as double,
      type: map['type'] as String,
    );
  }
}


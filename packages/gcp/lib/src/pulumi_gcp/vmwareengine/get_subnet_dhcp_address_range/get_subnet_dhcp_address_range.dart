// ignore_for_file: unused_element, unnecessary_cast

class GetSubnetDhcpAddressRange {
  /// The first IP address of the range.
  final String firstAddress;

  /// The last IP address of the range.
  final String lastAddress;

  GetSubnetDhcpAddressRange({
    required this.firstAddress,
    required this.lastAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firstAddress'] = firstAddress;
    map['lastAddress'] = lastAddress;
    return map;
  }

  factory GetSubnetDhcpAddressRange.fromMap(Map<String, dynamic> map) {
    return GetSubnetDhcpAddressRange(
      firstAddress: map['firstAddress'] as String,
      lastAddress: map['lastAddress'] as String,
    );
  }
}

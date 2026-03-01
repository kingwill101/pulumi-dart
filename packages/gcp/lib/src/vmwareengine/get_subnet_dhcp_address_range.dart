// ignore_for_file: unused_element, unnecessary_cast


class GetSubnetDhcpAddressRange {
  /// The first IP address of the range.
  final String firstAddress;
  /// The last IP address of the range.
  final String lastAddress;

  /// Creates a new [GetSubnetDhcpAddressRange].
  /// [firstAddress] The first IP address of the range.
  /// [lastAddress] The last IP address of the range.
  GetSubnetDhcpAddressRange({
    required this.firstAddress,
    required this.lastAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstAddress': firstAddress,
      'lastAddress': lastAddress,
    };
  }

  factory GetSubnetDhcpAddressRange.fromMap(Map<String, dynamic> map) {
    return GetSubnetDhcpAddressRange(
      firstAddress: map['firstAddress'] as String,
      lastAddress: map['lastAddress'] as String,
    );
  }
}


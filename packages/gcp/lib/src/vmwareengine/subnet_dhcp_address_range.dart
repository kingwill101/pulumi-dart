// ignore_for_file: unused_element, unnecessary_cast

class SubnetDhcpAddressRange {
  /// (Output)
  /// The first IP address of the range.
  final String? firstAddress;

  /// (Output)
  /// The last IP address of the range.
  final String? lastAddress;

  /// Creates a new [SubnetDhcpAddressRange].
  /// [firstAddress] (Output)
  /// [lastAddress] (Output)
  SubnetDhcpAddressRange({this.firstAddress, this.lastAddress});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstAddress': ?firstAddress,
      'lastAddress': ?lastAddress,
    };
  }

  factory SubnetDhcpAddressRange.fromMap(Map<String, dynamic> map) {
    return SubnetDhcpAddressRange(
      firstAddress: map['firstAddress'] == null
          ? null
          : map['firstAddress'] as String,
      lastAddress: map['lastAddress'] == null
          ? null
          : map['lastAddress'] as String,
    );
  }
}

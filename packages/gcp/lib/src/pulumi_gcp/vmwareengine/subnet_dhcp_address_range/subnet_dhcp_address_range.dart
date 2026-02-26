// ignore_for_file: unused_element, unnecessary_cast

class SubnetDhcpAddressRange {
  /// (Output)
  /// The first IP address of the range.
  final String? firstAddress;

  /// (Output)
  /// The last IP address of the range.
  final String? lastAddress;

  SubnetDhcpAddressRange({
    this.firstAddress,
    this.lastAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final firstAddressValue = firstAddress;
    if (firstAddressValue != null) {
      map['firstAddress'] = firstAddressValue;
    }
    final lastAddressValue = lastAddress;
    if (lastAddressValue != null) {
      map['lastAddress'] = lastAddressValue;
    }
    return map;
  }

  factory SubnetDhcpAddressRange.fromMap(Map<String, dynamic> map) {
    return SubnetDhcpAddressRange(
      firstAddress:
          map['firstAddress'] == null ? null : map['firstAddress'] as String,
      lastAddress:
          map['lastAddress'] == null ? null : map['lastAddress'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

class GetPublicIpv4PoolPoolAddressRange {
  /// Number of addresses in the range.
  final int addressCount;

  /// Number of available addresses in the range.
  final int availableAddressCount;

  /// First address in the range.
  final String firstAddress;

  /// Last address in the range.
  final String lastAddress;

  /// Creates a new [GetPublicIpv4PoolPoolAddressRange].
  /// [addressCount] Number of addresses in the range.
  /// [availableAddressCount] Number of available addresses in the range.
  /// [firstAddress] First address in the range.
  /// [lastAddress] Last address in the range.
  GetPublicIpv4PoolPoolAddressRange({
    required this.addressCount,
    required this.availableAddressCount,
    required this.firstAddress,
    required this.lastAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['addressCount'] = addressCount;
    map['availableAddressCount'] = availableAddressCount;
    map['firstAddress'] = firstAddress;
    map['lastAddress'] = lastAddress;
    return map;
  }

  factory GetPublicIpv4PoolPoolAddressRange.fromMap(Map<String, dynamic> map) {
    return GetPublicIpv4PoolPoolAddressRange(
      addressCount: map['addressCount'] as int,
      availableAddressCount: map['availableAddressCount'] as int,
      firstAddress: map['firstAddress'] as String,
      lastAddress: map['lastAddress'] as String,
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPublicIpv4PoolPoolAddressRange {
  /// Number of addresses in the range.
  final pulumi.Input<int> addressCount;
  /// Number of available addresses in the range.
  final pulumi.Input<int> availableAddressCount;
  /// First address in the range.
  final pulumi.Input<String> firstAddress;
  /// Last address in the range.
  final pulumi.Input<String> lastAddress;

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
    return <String, dynamic>{
      'addressCount': addressCount,
      'availableAddressCount': availableAddressCount,
      'firstAddress': firstAddress,
      'lastAddress': lastAddress,
    };
  }

  factory GetPublicIpv4PoolPoolAddressRange.fromMap(Map<String, dynamic> map) {
    return GetPublicIpv4PoolPoolAddressRange(
      addressCount: (map['addressCount'] as int).input(),
      availableAddressCount: (map['availableAddressCount'] as int).input(),
      firstAddress: (map['firstAddress'] as String).input(),
      lastAddress: (map['lastAddress'] as String).input(),
    );
  }
}


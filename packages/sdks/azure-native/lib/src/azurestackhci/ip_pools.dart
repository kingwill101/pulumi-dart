// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The dnsServers of a device.
class IpPools {
  /// Ending IP address for the management network. A minimum of six free, contiguous IPv4 addresses (excluding your host IPs) are needed for infrastructure services such as clustering.
  final pulumi.Input<String>? endingAddress;
  /// Starting IP address for the management network. A minimum of six free, contiguous IPv4 addresses (excluding your host IPs) are needed for infrastructure services such as clustering.
  final pulumi.Input<String>? startingAddress;

  /// Creates a new [IpPools].
  /// [endingAddress] Ending IP address for the management network. A minimum of six free, contiguous IPv4 addresses (excluding your host IPs) are needed for infrastructure services such as clustering.
  /// [startingAddress] Starting IP address for the management network. A minimum of six free, contiguous IPv4 addresses (excluding your host IPs) are needed for infrastructure services such as clustering.
  IpPools({
    this.endingAddress,
    this.startingAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endingAddress': ?endingAddress,
      'startingAddress': ?startingAddress,
    };
  }

  factory IpPools.fromMap(Map<String, dynamic> map) {
    return IpPools(
      endingAddress: map['endingAddress'] == null ? null : (map['endingAddress'] as String).input(),
      startingAddress: map['startingAddress'] == null ? null : (map['startingAddress'] as String).input(),
    );
  }
}


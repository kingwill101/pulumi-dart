// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The dnsServers of a device.
class IpPoolsResponse {
  /// Ending IP address for the management network. A minimum of six free, contiguous IPv4 addresses (excluding your host IPs) are needed for infrastructure services such as clustering.
  final pulumi.Input<String>? endingAddress;
  /// Starting IP address for the management network. A minimum of six free, contiguous IPv4 addresses (excluding your host IPs) are needed for infrastructure services such as clustering.
  final pulumi.Input<String>? startingAddress;

  /// Creates a new [IpPoolsResponse].
  /// [endingAddress] Ending IP address for the management network. A minimum of six free, contiguous IPv4 addresses (excluding your host IPs) are needed for infrastructure services such as clustering.
  /// [startingAddress] Starting IP address for the management network. A minimum of six free, contiguous IPv4 addresses (excluding your host IPs) are needed for infrastructure services such as clustering.
  IpPoolsResponse({
    this.endingAddress,
    this.startingAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endingAddress': ?endingAddress,
      'startingAddress': ?startingAddress,
    };
  }

  factory IpPoolsResponse.fromMap(Map<String, dynamic> map) {
    return IpPoolsResponse(
      endingAddress: (() { final guardedValue = map['endingAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startingAddress: (() { final guardedValue = map['startingAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


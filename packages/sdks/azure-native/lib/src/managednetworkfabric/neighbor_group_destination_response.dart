// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An array of destination IPv4 Addresses or IPv6 Addresses.
class NeighborGroupDestinationResponse {
  /// Array of IPv4 Addresses.
  final pulumi.Input<List<String>?>? ipv4Addresses;
  /// Array of IPv6 Addresses.
  final pulumi.Input<List<String>?>? ipv6Addresses;

  /// Creates a new [NeighborGroupDestinationResponse].
  /// [ipv4Addresses] Array of IPv4 Addresses.
  /// [ipv6Addresses] Array of IPv6 Addresses.
  const NeighborGroupDestinationResponse({
    this.ipv4Addresses,
    this.ipv6Addresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Addresses': ?ipv4Addresses,
      'ipv6Addresses': ?ipv6Addresses,
    };
  }

  factory NeighborGroupDestinationResponse.fromMap(Map<String, dynamic> map) {
    return NeighborGroupDestinationResponse(
      ipv4Addresses: (() { final guardedValue = map['ipv4Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6Addresses: (() { final guardedValue = map['ipv6Addresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

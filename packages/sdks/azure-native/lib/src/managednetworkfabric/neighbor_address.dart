// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Neighbor Address properties.
class NeighborAddress {
  /// IP Address.
  final pulumi.Input<String?>? address;

  /// Creates a new [NeighborAddress].
  /// [address] IP Address.
  const NeighborAddress({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory NeighborAddress.fromMap(Map<String, dynamic> map) {
    return NeighborAddress(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

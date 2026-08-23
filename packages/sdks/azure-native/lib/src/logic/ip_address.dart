// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The ip address.
class IpAddress {
  /// The address.
  final pulumi.Input<String>? address;

  /// Creates a new [IpAddress].
  /// [address] The address.
  const IpAddress({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory IpAddress.fromMap(Map<String, dynamic> map) {
    return IpAddress(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

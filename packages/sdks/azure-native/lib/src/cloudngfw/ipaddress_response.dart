// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Address
class IPAddressResponse {
  /// Address value
  final pulumi.Input<String?>? address;
  /// Resource Id
  final pulumi.Input<String?>? resourceId;

  /// Creates a new [IPAddressResponse].
  /// [address] Address value
  /// [resourceId] Resource Id
  const IPAddressResponse({
    this.address,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'resourceId': ?resourceId,
    };
  }

  factory IPAddressResponse.fromMap(Map<String, dynamic> map) {
    return IPAddressResponse(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

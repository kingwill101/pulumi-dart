// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP Address
class IPAddressResponse {
  /// Address value
  final pulumi.Input<String>? address;
  /// Resource Id
  final pulumi.Input<String>? resourceId;

  /// Creates a new [IPAddressResponse].
  /// [address] Address value
  /// [resourceId] Resource Id
  IPAddressResponse({
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
      address: map['address'] == null ? null : (map['address'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
    );
  }
}


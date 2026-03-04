// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PrivateIpAddressSpecification
class PrivateIpAddressSpecificationResponse {
  /// Property primary
  final pulumi.Input<bool>? primary;

  /// Property privateIpAddress
  final pulumi.Input<String>? privateIpAddress;

  /// Creates a new [PrivateIpAddressSpecificationResponse].
  /// [primary] Property primary
  /// [privateIpAddress] Property privateIpAddress
  PrivateIpAddressSpecificationResponse({this.primary, this.privateIpAddress});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primary': ?primary,
      'privateIpAddress': ?privateIpAddress,
    };
  }

  factory PrivateIpAddressSpecificationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return PrivateIpAddressSpecificationResponse(
      primary: (() {
        final guardedValue = map['primary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      privateIpAddress: (() {
        final guardedValue = map['privateIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserAddresses {
  /// The country that this address is in.
  final pulumi.Input<String>? country;
  /// The name that is typically displayed when the address is shown for display.
  final pulumi.Input<String>? formatted;
  /// The address locality.
  final pulumi.Input<String>? locality;
  /// The postal code of the address.
  final pulumi.Input<String>? postalCode;
  /// When `true`, this is the primary address associated with the user.
  final pulumi.Input<bool>? primary;
  /// The region of the address.
  final pulumi.Input<String>? region;
  /// The street of the address.
  final pulumi.Input<String>? streetAddress;
  /// The type of address.
  final pulumi.Input<String>? type;

  /// Creates a new [UserAddresses].
  /// [country] The country that this address is in.
  /// [formatted] The name that is typically displayed when the address is shown for display.
  /// [locality] The address locality.
  /// [postalCode] The postal code of the address.
  /// [primary] When `true`, this is the primary address associated with the user.
  /// [region] The region of the address.
  /// [streetAddress] The street of the address.
  /// [type] The type of address.
  UserAddresses({
    this.country,
    this.formatted,
    this.locality,
    this.postalCode,
    this.primary,
    this.region,
    this.streetAddress,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country': ?country,
      'formatted': ?formatted,
      'locality': ?locality,
      'postalCode': ?postalCode,
      'primary': ?primary,
      'region': ?region,
      'streetAddress': ?streetAddress,
      'type': ?type,
    };
  }

  factory UserAddresses.fromMap(Map<String, dynamic> map) {
    return UserAddresses(
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      formatted: (() { final guardedValue = map['formatted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locality: (() { final guardedValue = map['locality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      postalCode: (() { final guardedValue = map['postalCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streetAddress: (() { final guardedValue = map['streetAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


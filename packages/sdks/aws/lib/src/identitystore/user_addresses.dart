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
      country: map['country'] == null ? null : ((map['country'] as String).input()).input(),
      formatted: map['formatted'] == null ? null : ((map['formatted'] as String).input()).input(),
      locality: map['locality'] == null ? null : ((map['locality'] as String).input()).input(),
      postalCode: map['postalCode'] == null ? null : ((map['postalCode'] as String).input()).input(),
      primary: map['primary'] == null ? null : ((map['primary'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      streetAddress: map['streetAddress'] == null ? null : ((map['streetAddress'] as String).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

class UserAddresses {
  /// The country that this address is in.
  final String? country;

  /// The name that is typically displayed when the address is shown for display.
  final String? formatted;

  /// The address locality.
  final String? locality;

  /// The postal code of the address.
  final String? postalCode;

  /// When `true`, this is the primary address associated with the user.
  final bool? primary;

  /// The region of the address.
  final String? region;

  /// The street of the address.
  final String? streetAddress;

  /// The type of address.
  final String? type;

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
      country: map['country'] == null ? null : map['country'] as String,
      formatted: map['formatted'] == null ? null : map['formatted'] as String,
      locality: map['locality'] == null ? null : map['locality'] as String,
      postalCode: map['postalCode'] == null
          ? null
          : map['postalCode'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      streetAddress: map['streetAddress'] == null
          ? null
          : map['streetAddress'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

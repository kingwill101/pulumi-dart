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
    final map = <String, dynamic>{};
    final countryValue = country;
    if (countryValue != null) {
      map['country'] = countryValue;
    }
    final formattedValue = formatted;
    if (formattedValue != null) {
      map['formatted'] = formattedValue;
    }
    final localityValue = locality;
    if (localityValue != null) {
      map['locality'] = localityValue;
    }
    final postalCodeValue = postalCode;
    if (postalCodeValue != null) {
      map['postalCode'] = postalCodeValue;
    }
    final primaryValue = primary;
    if (primaryValue != null) {
      map['primary'] = primaryValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final streetAddressValue = streetAddress;
    if (streetAddressValue != null) {
      map['streetAddress'] = streetAddressValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory UserAddresses.fromMap(Map<String, dynamic> map) {
    return UserAddresses(
      country: map['country'] == null ? null : map['country'] as String,
      formatted: map['formatted'] == null ? null : map['formatted'] as String,
      locality: map['locality'] == null ? null : map['locality'] as String,
      postalCode:
          map['postalCode'] == null ? null : map['postalCode'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      streetAddress:
          map['streetAddress'] == null ? null : map['streetAddress'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

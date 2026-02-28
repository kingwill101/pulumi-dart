// ignore_for_file: unused_element, unnecessary_cast


class GetUsersUserAddress {
  /// Country that this address is in.
  final String country;
  /// Name that is typically displayed when the name is shown for display.
  final String formatted;
  /// Address locality.
  final String locality;
  /// Postal code of the address.
  final String postalCode;
  /// When `true`, this is the primary phone number associated with the user.
  final bool primary;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String region;
  /// Street of the address.
  final String streetAddress;
  /// Type of phone number.
  final String type;

  /// Creates a new [GetUsersUserAddress].
  /// [country] Country that this address is in.
  /// [formatted] Name that is typically displayed when the name is shown for display.
  /// [locality] Address locality.
  /// [postalCode] Postal code of the address.
  /// [primary] When `true`, this is the primary phone number associated with the user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [streetAddress] Street of the address.
  /// [type] Type of phone number.
  GetUsersUserAddress({
    required this.country,
    required this.formatted,
    required this.locality,
    required this.postalCode,
    required this.primary,
    required this.region,
    required this.streetAddress,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country': country,
      'formatted': formatted,
      'locality': locality,
      'postalCode': postalCode,
      'primary': primary,
      'region': region,
      'streetAddress': streetAddress,
      'type': type,
    };
  }

  factory GetUsersUserAddress.fromMap(Map<String, dynamic> map) {
    return GetUsersUserAddress(
      country: map['country'] as String,
      formatted: map['formatted'] as String,
      locality: map['locality'] as String,
      postalCode: map['postalCode'] as String,
      primary: map['primary'] as bool,
      region: map['region'] as String,
      streetAddress: map['streetAddress'] as String,
      type: map['type'] as String,
    );
  }
}


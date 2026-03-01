// ignore_for_file: unused_element, unnecessary_cast

class GetUserAddress {
  /// The country that this address is in.
  final String country;

  /// The name that is typically displayed when the name is shown for display.
  final String formatted;

  /// The address locality.
  final String locality;

  /// The postal code of the address.
  final String postalCode;

  /// When `true`, this is the primary phone number associated with the user.
  final bool primary;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String region;

  /// The street of the address.
  final String streetAddress;

  /// The type of phone number.
  final String type;

  /// Creates a new [GetUserAddress].
  /// [country] The country that this address is in.
  /// [formatted] The name that is typically displayed when the name is shown for display.
  /// [locality] The address locality.
  /// [postalCode] The postal code of the address.
  /// [primary] When `true`, this is the primary phone number associated with the user.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [streetAddress] The street of the address.
  /// [type] The type of phone number.
  GetUserAddress({
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

  factory GetUserAddress.fromMap(Map<String, dynamic> map) {
    return GetUserAddress(
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

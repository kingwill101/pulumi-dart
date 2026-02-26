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

  /// When <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, this is the primary phone number associated with the user.
  final bool primary;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String region;

  /// The street of the address.
  final String streetAddress;

  /// The type of phone number.
  final String type;

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
    final map = <String, dynamic>{};
    map['country'] = country;
    map['formatted'] = formatted;
    map['locality'] = locality;
    map['postalCode'] = postalCode;
    map['primary'] = primary;
    map['region'] = region;
    map['streetAddress'] = streetAddress;
    map['type'] = type;
    return map;
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

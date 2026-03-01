// ignore_for_file: unused_element, unnecessary_cast


/// Shipping address where customer wishes to receive the device.
class ShippingAddressResponse {
  /// Type of address.
  final String? addressType;
  /// Name of the City.
  final String? city;
  /// Name of the company.
  final String? companyName;
  /// Name of the Country.
  final String country;
  /// Postal code.
  final String? postalCode;
  /// Flag to indicate if customer has chosen to skip default address validation
  final bool? skipAddressValidation;
  /// Name of the State or Province.
  final String? stateOrProvince;
  /// Street Address line 1.
  final String streetAddress1;
  /// Street Address line 2.
  final String? streetAddress2;
  /// Street Address line 3.
  final String? streetAddress3;
  /// Tax Identification Number
  final String? taxIdentificationNumber;
  /// Extended Zip Code.
  final String? zipExtendedCode;

  /// Creates a new [ShippingAddressResponse].
  /// [addressType] Type of address.
  /// [city] Name of the City.
  /// [companyName] Name of the company.
  /// [country] Name of the Country.
  /// [postalCode] Postal code.
  /// [skipAddressValidation] Flag to indicate if customer has chosen to skip default address validation
  /// [stateOrProvince] Name of the State or Province.
  /// [streetAddress1] Street Address line 1.
  /// [streetAddress2] Street Address line 2.
  /// [streetAddress3] Street Address line 3.
  /// [taxIdentificationNumber] Tax Identification Number
  /// [zipExtendedCode] Extended Zip Code.
  ShippingAddressResponse({
    this.addressType,
    this.city,
    this.companyName,
    required this.country,
    this.postalCode,
    this.skipAddressValidation,
    this.stateOrProvince,
    required this.streetAddress1,
    this.streetAddress2,
    this.streetAddress3,
    this.taxIdentificationNumber,
    this.zipExtendedCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressType': ?addressType,
      'city': ?city,
      'companyName': ?companyName,
      'country': country,
      'postalCode': ?postalCode,
      'skipAddressValidation': ?skipAddressValidation,
      'stateOrProvince': ?stateOrProvince,
      'streetAddress1': streetAddress1,
      'streetAddress2': ?streetAddress2,
      'streetAddress3': ?streetAddress3,
      'taxIdentificationNumber': ?taxIdentificationNumber,
      'zipExtendedCode': ?zipExtendedCode,
    };
  }

  factory ShippingAddressResponse.fromMap(Map<String, dynamic> map) {
    return ShippingAddressResponse(
      addressType: map['addressType'] == null ? null : map['addressType'] as String,
      city: map['city'] == null ? null : map['city'] as String,
      companyName: map['companyName'] == null ? null : map['companyName'] as String,
      country: map['country'] as String,
      postalCode: map['postalCode'] == null ? null : map['postalCode'] as String,
      skipAddressValidation: map['skipAddressValidation'] == null ? null : map['skipAddressValidation'] as bool,
      stateOrProvince: map['stateOrProvince'] == null ? null : map['stateOrProvince'] as String,
      streetAddress1: map['streetAddress1'] as String,
      streetAddress2: map['streetAddress2'] == null ? null : map['streetAddress2'] as String,
      streetAddress3: map['streetAddress3'] == null ? null : map['streetAddress3'] as String,
      taxIdentificationNumber: map['taxIdentificationNumber'] == null ? null : map['taxIdentificationNumber'] as String,
      zipExtendedCode: map['zipExtendedCode'] == null ? null : map['zipExtendedCode'] as String,
    );
  }
}


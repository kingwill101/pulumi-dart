// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Shipping address where customer wishes to receive the device.
class ShippingAddressResponse {
  /// Type of address.
  final pulumi.Input<String>? addressType;
  /// Name of the City.
  final pulumi.Input<String>? city;
  /// Name of the company.
  final pulumi.Input<String>? companyName;
  /// Name of the Country.
  final pulumi.Input<String> country;
  /// Postal code.
  final pulumi.Input<String>? postalCode;
  /// Flag to indicate if customer has chosen to skip default address validation
  final pulumi.Input<bool>? skipAddressValidation;
  /// Name of the State or Province.
  final pulumi.Input<String>? stateOrProvince;
  /// Street Address line 1.
  final pulumi.Input<String> streetAddress1;
  /// Street Address line 2.
  final pulumi.Input<String>? streetAddress2;
  /// Street Address line 3.
  final pulumi.Input<String>? streetAddress3;
  /// Tax Identification Number
  final pulumi.Input<String>? taxIdentificationNumber;
  /// Extended Zip Code.
  final pulumi.Input<String>? zipExtendedCode;

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
      addressType: (() { final guardedValue = map['addressType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      city: (() { final guardedValue = map['city']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      companyName: (() { final guardedValue = map['companyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: pulumi.Input.fromValue(map['country'] as String),
      postalCode: (() { final guardedValue = map['postalCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      skipAddressValidation: (() { final guardedValue = map['skipAddressValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stateOrProvince: (() { final guardedValue = map['stateOrProvince']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streetAddress1: pulumi.Input.fromValue(map['streetAddress1'] as String),
      streetAddress2: (() { final guardedValue = map['streetAddress2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streetAddress3: (() { final guardedValue = map['streetAddress3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taxIdentificationNumber: (() { final guardedValue = map['taxIdentificationNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zipExtendedCode: (() { final guardedValue = map['zipExtendedCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


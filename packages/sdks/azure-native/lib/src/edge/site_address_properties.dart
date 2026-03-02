// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Site address properties
class SiteAddressProperties {
  /// City of the address
  final pulumi.Input<String>? city;
  /// Country of the address
  final pulumi.Input<String>? country;
  /// Postal or ZIP code of the address
  final pulumi.Input<String>? postalCode;
  /// State or province of the address
  final pulumi.Input<String>? stateOrProvince;
  /// First line of the street address
  final pulumi.Input<String>? streetAddress1;
  /// Second line of the street address
  final pulumi.Input<String>? streetAddress2;

  /// Creates a new [SiteAddressProperties].
  /// [city] City of the address
  /// [country] Country of the address
  /// [postalCode] Postal or ZIP code of the address
  /// [stateOrProvince] State or province of the address
  /// [streetAddress1] First line of the street address
  /// [streetAddress2] Second line of the street address
  SiteAddressProperties({
    this.city,
    this.country,
    this.postalCode,
    this.stateOrProvince,
    this.streetAddress1,
    this.streetAddress2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'city': ?city,
      'country': ?country,
      'postalCode': ?postalCode,
      'stateOrProvince': ?stateOrProvince,
      'streetAddress1': ?streetAddress1,
      'streetAddress2': ?streetAddress2,
    };
  }

  factory SiteAddressProperties.fromMap(Map<String, dynamic> map) {
    return SiteAddressProperties(
      city: map['city'] == null ? null : (map['city'] as String).input(),
      country: map['country'] == null ? null : (map['country'] as String).input(),
      postalCode: map['postalCode'] == null ? null : (map['postalCode'] as String).input(),
      stateOrProvince: map['stateOrProvince'] == null ? null : (map['stateOrProvince'] as String).input(),
      streetAddress1: map['streetAddress1'] == null ? null : (map['streetAddress1'] as String).input(),
      streetAddress2: map['streetAddress2'] == null ? null : (map['streetAddress2'] as String).input(),
    );
  }
}

